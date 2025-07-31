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

    actions
    {
        area(Processing)
        {
            group("Inventory Management")
            {
                action(OpenBatchList)
                {
                    ApplicationArea = All;
                    Caption = 'Item Batch List';
                    Image = List;
                    RunObject = Page "Item Batch List";
                }
                action(OpenBatchCard)
                {
                    ApplicationArea = All;
                    Caption = 'New Batch Entry';
                    Image = NewDocument;
                    RunObject = Page "Item Batch Card";
                }
            }
        }
    }
}
