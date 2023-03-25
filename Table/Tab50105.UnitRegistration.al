table 50105 "Units Registration"
{
    Caption = 'Coures Registration';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student Registration No."; code[200])
        {
            Caption = 'Student Registration No.';
            DataClassification = ToBeClassified;
            TableRelation = ADMIN;
            trigger OnValidate()
            var
                course: Record ADMIN;
            begin
                course.Reset();
                course.SetRange("No.", "Student Registration No.");
                if course.FindFirst() then
                    "Student Registration No." := course.Registration;
                FullName := course."Full name";
            end;
        }
        field(2; FullName; Text[200])
        {
            DataClassification = ToBeClassified;
            Caption = 'FullName';
        }
        field(3; Course; code[200])
        {
            DataClassification = ToBeClassified;
            Caption = 'Course';
            TableRelation = "Courses Setup".course;

        }

        field(4; "year of study"; code[200])
        {
            DataClassification = ToBeClassified;
            Caption = 'Year Of Study';
            Editable = false;
        }
        field(5; "unit code"; code[200])
        {
            DataClassification = ToBeClassified;
            Caption = 'Unit Code';
            TableRelation = units;
            trigger OnValidate()
            var
                unit: Record units;
            begin
                if xRec."unit code" <> Rec."unit code" then begin
                    unit.Reset();
                    if unit.Get("unit code") then begin
                        "unit description" := unit."Unit Description";
                        // "year of study" := unit."Year and semester study";
                    end;
                end;

            end;
        }
        field(6; "unit description"; Text[200])
        {
            DataClassification = ToBeClassified;
            Caption = 'Unit Description';
        }



    }
    keys
    {
        key(PK; "Student Registration No.")
        {
            Clustered = true;
        }
    }


}
