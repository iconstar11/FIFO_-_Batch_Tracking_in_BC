tableextension 50102 "Sales Line Ext" extends "Sales Line"
{
    fields
    {
        field(50100; "Batch No."; Code[20])
        {
            DataClassification = ProductTracking;
            Caption = 'Batch No.';
        }
    }
}
