table 50103 ADMIN
{
    Caption = 'ADMIN';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[200])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
            TableRelation = StudentApplication;
            trigger OnValidate()
            var
                set: Record StudentApplication;
            begin
                set.Reset();
                set.SetRange(No, "No.");
                if set.FindFirst() then
                    "Full name" := set.fullname;
                begin
                    if set."Approval Status" = set."Approval Status"::Open then
                        Status := Status::InActive
                    else
                        Status := Status::Active;
                end;

            end;

        }
        field(2; "Full name"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'FullName';
            Editable = false;
        }
        field(3; department; Text[200])
        {
            DataClassification = ToBeClassified;
            Caption = 'Department';
            TableRelation = "Courses Setup";

            trigger OnValidate()
            var
                setup: Record "Courses Setup";

            begin
                setup.Reset();
                setup.SetRange(course, department);
                if setup.FindFirst() then
                    course := setup.course;
                "course description" := setup."course description";

            end;


        }
        field(4; course; text[200])
        {
            DataClassification = ToBeClassified;
            Caption = 'Course Code';
            Editable = false;

        }
        field(5; "course description"; text[200])
        {
            DataClassification = ToBeClassified;
            Caption = 'Course Description';
            Editable = false;
        }
        field(6; year; Enum year)
        {
            DataClassification = ToBeClassified;
            Caption = 'Year';
            trigger OnValidate()
            begin
                Registration := Format(course) + Format('/') + Format("No.") + Format('/') + Format(year);
            end;
        }
        field(7; Registration; code[300])
        {
            DataClassification = ToBeClassified;
            Caption = 'StudReg No.';
        }
        field(8; Status; Enum Status)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }



    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(Dropdown; Registration, "Full name") { }
    }
}
