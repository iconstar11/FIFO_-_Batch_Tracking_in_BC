pageextension 50151 "Sales Line Ext" extends "Sales Order Subform"
{
    layout
    {
        addlast(Control1)
        {
            field("Batch No."; Rec."Batch No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the batch number of the item being sold.';

                TableRelation = "Item Batch Ledger"."Batch No."
                    where("Item No." = field("No."), "Remaining Quantity" = filter(> 0));
                Caption = 'Batch No.';

                trigger OnValidate()
                var
                    Batch: Record "Item Batch Ledger";
                begin
                    if (Rec."Batch No." = '') and (Rec."No." <> '') then begin
                        Batch.SetRange("Item No.", Rec."No.");
                        Batch.SetFilter("Remaining Quantity", '>0');
                        Batch.SetCurrentKey("Entry Date"); // FIFO: pick oldest
                        if Batch.FindFirst() then
                            Rec."Batch No." := Format(Batch."Batch No."); // Format to avoid type mismatch
                    end;
                end;
            }
        }
    }
}
