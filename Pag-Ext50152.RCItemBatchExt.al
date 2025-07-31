pageextension 50152 "RC Item Batch Ext" extends "Accountant Role Center"
{

    layout
    {
        addlast(RoleCenter)
        {
            part(ItemBatchList; "Item Batch ListPart")
            {
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        addlast(Navigation)
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
