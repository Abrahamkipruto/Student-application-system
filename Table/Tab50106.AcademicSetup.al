table 50106 "Department Setup"
{
    Caption = 'Department Setup';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Code"; code[200])
        {
            Caption = 'Code';
            DataClassification = ToBeClassified;
        }
        field(2; Description; Text[200])
        {
            DataClassification = ToBeClassified;
            Caption = 'Description';
        }


    }
    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }
}
