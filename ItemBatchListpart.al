page 50154 "Item Batch ListPart"
{
    PageType = ListPart;
    SourceTable = "Item Batch Ledger";
    ApplicationArea = All;
    Caption = 'Item Batches';

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Item No."; Rec."Item No.") { }
                field("Batch No."; Rec."Batch No.") { }
                field("Remaining Quantity"; Rec."Remaining Quantity") { }
            }
        }
    }


}
