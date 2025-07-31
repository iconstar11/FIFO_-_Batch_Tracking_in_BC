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
            }
        }
    }
}
