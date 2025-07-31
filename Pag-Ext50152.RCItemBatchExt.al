// pageextension 50152 "RC Item Batch Ext" extends "Accountant Role Center"

page 50155 "Role Center"

{
    PageType = RoleCenter;
    Caption = 'Role Center';
    ApplicationArea = All;

    layout
    {
        // area(RoleCenter)
        // {
        //     part(ItemBatchList; "Item Batch ListPart")
        //     {
        //         ApplicationArea = All;
        //     }
        // }
    }
    actions
    {
        area(Sections)
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

profile "Batch Management"
{
    Caption = 'Batch Management';
    RoleCenter = "Role Center";
    ProfileDescription = 'Role center for managing item batches.';
}