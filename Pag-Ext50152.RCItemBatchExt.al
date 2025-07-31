pageextension 50152 "RC Item Batch Ext" extends "Project Manager Role Center"
{

    layout
    {
        addlast(RoleCenter)
        {
            part(ItemBatchList; "Item Batch List")
            {
                ApplicationArea = All;
            }
        }
    }
}
