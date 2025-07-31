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
            DataClassification = CustomerContent;
            TableRelation = Item."No.";
        }

        field(3; "Batch No."; Code[20])
        {
            DataClassification = CustomerContent;
        }

        field(4; "Entry Date"; Date)
        {
            DataClassification = SystemMetadata;
        }

        field(5; "Expiration Date"; Date)
        {
            DataClassification = SystemMetadata;
        }

        field(6; "Quantity Available"; Integer)
        {
            DataClassification = CustomerContent;
        }

        field(7; "Used Quantity"; Integer)
        {
            DataClassification = CustomerContent;
        }

        field(8; "Remaining Quantity"; Integer)
        {
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(9; "No. Series"; Code[20])
        {
            DataClassification = CustomerContent;
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


    trigger OnInsert()
    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
        NoSeriesCode: Code[20];
    begin
        if "Batch No." = '' then begin
            NoSeriesCode := 'BATCH'; // Must exist in No. Series table!
            "Batch No." := NoSeriesMgt.GetNextNo(NoSeriesCode, Today, true);
        end;
    end;


}
