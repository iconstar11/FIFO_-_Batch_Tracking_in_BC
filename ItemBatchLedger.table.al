table 50151 "Item Batch Ledger"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
        }

        field(2; "Item No."; Code[20])
        {
            DataClassification = Product;
            TableRelation = Item."No.";
        }

        field(3; "Batch No."; Code[20])
        {
            DataClassification = ProductTracking;
        }

        field(4; "Entry Date"; Date)
        {
            DataClassification = Date;
        }

        field(5; "Expiration Date"; Date)
        {
            DataClassification = Date;
        }

        field(6; "Quantity Available"; Decimal)
        {
            DataClassification = Quantity;
        }

        field(7; "Used Quantity"; Decimal)
        {
            DataClassification = Quantity;
        }

        field(8; "Remaining Quantity"; Decimal)
        {
            DataClassification = Quantity;
            Editable = false;
        }
    }

    keys
    {
        key(PK; "Entry No.") { Clustered = true; }
    }

    trigger OnModify()
    begin
        "Remaining Quantity" := "Quantity Available" - "Used Quantity";
    end;
}
