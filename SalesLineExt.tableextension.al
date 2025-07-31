tableextension 50152 "Sales Line Ext" extends "Sales Line"
{
    fields
    {
        field(50100; "Batch No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Batch No.';
        }
    }
}
