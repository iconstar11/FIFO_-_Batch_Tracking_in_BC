page 50152 "Item Batch Card"
{
    PageType = Card;
    SourceTable = "Item Batch Ledger";
    ApplicationArea = All;
    Caption = 'Item Batch Details';

    layout
    {
        area(content)
        {
            group("Batch Info")
            {
                field("Item No."; Rec."Item No.") { }
                field("Batch No."; Rec."Batch No.") { }
                field("Entry Date"; Rec."Entry Date") { }
                field("Expiration Date"; Rec."Expiration Date") { }
            }

            group("Quantities")
            {
                field("Quantity Available"; Rec."Quantity Available") { }
                field("Used Quantity"; Rec."Used Quantity") { }
                field("Remaining Quantity"; Rec."Remaining Quantity") { }
            }
        }
    }
}
