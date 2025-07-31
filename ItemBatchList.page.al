page 50151 "Item Batch List"
{
    PageType = List;
    SourceTable = "Item Batch Ledger";
    ApplicationArea = All;
    Caption = 'Item Batches';
    CardPageId = "Item Batch Card";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Item No."; Rec."Item No.") { }
                field("Batch No."; Rec."Batch No.") { }
                field("Entry Date"; Rec."Entry Date") { }
                field("Expiration Date"; Rec."Expiration Date") { }
                field("Quantity Available"; Rec."Quantity Available") { }
                field("Used Quantity"; Rec."Used Quantity") { }
                field("Remaining Quantity"; Rec."Remaining Quantity") { }
            }
        }
    }
}
