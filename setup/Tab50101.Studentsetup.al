table 50101 "Student setup"
{
    Caption = 'Student setup';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; PK; Code[20])
        {
            Caption = 'PK';
            DataClassification = ToBeClassified;
        }
        field(2; "Student NOseries"; Code[20])
        {
            Caption = 'Student NOseries';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(3; No; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'No';
        }
    }
    keys
    {
        key(PK; PK)
        {
            Clustered = true;
        }
    }
}
