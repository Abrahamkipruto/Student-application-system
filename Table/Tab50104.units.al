table 50104 units
{
    Caption = 'units';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Course Code"; Code[20])
        {
            Caption = 'Course Code';
            DataClassification = ToBeClassified;



        }

        field(2; "Unit Code"; Code[20])
        {
            Caption = 'Unit Code';
            DataClassification = ToBeClassified;

        }
        field(3; "Unit Description"; Text[200])
        {
            Caption = 'Unit Description';
            DataClassification = ToBeClassified;
        }
        // field(4; "Year and semester study"; Code[20])
        // {
        //     DataClassification = ToBeClassified;
        //     Caption = 'Year And The Semester Of Study ';
        // }
    }

    keys
    {
        key(PK; "Unit Code")
        {
            Clustered = true;
        }

    }
    fieldgroups
    {
        // fieldgroup(DROPdown; "Course Code", "Unit Code", "Year and semester study", "Unit Description") { }
    }
}
