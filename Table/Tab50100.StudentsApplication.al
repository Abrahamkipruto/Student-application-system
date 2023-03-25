table 50100 StudentApplication
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; No; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'No';

        }
        field(2; Firstname; text[200])
        {
            DataClassification = ToBeClassified;
            Caption = 'First Name';
            trigger OnValidate()
            begin
                fullname := Firstname + ' ' + middlename + ' ' + surname;
            end;
        }
        field(3; middlename; Text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Middle Name';
            trigger OnValidate()
            begin
                fullname := Firstname + ' ' + middlename + ' ' + surname;
            end;
        }
        field(4; surname; text[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'SurName';
            trigger OnValidate()
            begin
                fullname := Firstname + ' ' + middlename + ' ' + surname;
            end;
        }
        field(5; fullname; Text[30])
        {
            DataClassification = ToBeClassified;
            Editable = false;
            Caption = 'Full Name';
        }
        field(6; "date of birth"; date)
        {
            DataClassification = ToBeClassified;
            Caption = 'DOB';
            trigger OnValidate()
            begin
                if "date of birth" <> 0D then begin
                    Age := Round(Today - "date of birth") / 365;

                end;
            end;
        }
        field(7; Age; Decimal)
        {
            DataClassification = ToBeClassified;
            Editable = false;
            Caption = 'Age';


        }
        field(8; Gender; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "MALE","FEMALE";
        }
        field(9; "Phone no"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Student Phone No.';
            NotBlank = true;
        }
        field(10; emails; text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Your Email';
            trigger OnValidate()
            var
                mail: Codeunit "Mail Management";
            begin
                mail.ValidateEmailAddressField(emails);
            end;

        }
        field(11; Address; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Student Address';
        }
        field(12; "next of kin"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "parent","Guardian";
            Caption = 'Next Of Kin';

        }
        field(13; "f-name"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Parent/Guardian Full Name';

        }
        field(14; Relationship; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Mother,Father,Grandmother,GrandFather,uncle,Aunt;
            Caption = 'Relationship';
        }
        field(15; "Parent/Guardian Phone Number"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Phone No.';
        }
        field(16; "Parent/Guardian email"; Text[200])
        {
            DataClassification = ToBeClassified;
            Caption = 'Parent/Guardian email';
            trigger OnValidate()
            var
                mail: Codeunit "Mail Management";
            begin
                mail.ValidateEmailAddressField("Parent/Guardian email");
            end;

        }
        field(17; "National ID"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'National ID';
        }
        field(18; "Marital Status"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Single","Married";
        }
        field(19; Nationality; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Kenyan","Foreigner";
        }
        field(20; Religion; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Christian","Muslim","Hindu","Other";
        }
        field(21; County; Text[200])
        {
            DataClassification = ToBeClassified;
            Caption = 'County';
        }
        field(22; Course; Code[200])
        {
            DataClassification = ToBeClassified;
            Caption = 'Course Code';
            TableRelation = "Courses Setup";
            trigger OnValidate()
            var
                Setup: Record "Courses Setup";
            begin
                if xRec.Course <> Rec.Course then begin
                    Setup.Reset();
                    if Setup.Get(Course) then begin
                        "Course Description" := Setup."course description";
                    end;
                end;
            end;

        }
        field(23; "Course Description"; Text[300])
        {
            DataClassification = ToBeClassified;
            Caption = 'Course Description';
            Editable = false;
        }
        field(24; "School Attended"; Code[200])
        {
            DataClassification = ToBeClassified;
            Caption = 'School Attended';
        }
        field(25; Grade; option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "A","A-","B+","B","B-","C+","C","C-","D+","D","D-","E";
        }
        field(26; From; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Year Attended High school';
        }
        field(27; "Approval Status"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Open,"Pending Approval",Released;
            OptionCaption = ' Open,Pending Approval,Released';
            Editable = false;
        }
        field(28; Signature; MediaSet)
        {
            DataClassification = ToBeClassified;
            Caption = 'Student Signature';
        }
        field(29; "Reference for Date Calculation"; Date)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                CalculateNwedate();
            end;
        }
        field(30; "Date formula to Test"; DateFormula)
        {
            DataClassification = ToBeClassified;
            Caption = 'Date formula';
            trigger OnValidate()
            begin
                CalculateNwedate();
            end;

        }
        field(31; "Date Result"; Date)
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                CalculateNwedate();
            end;

        }




    }

    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; No, Firstname, middlename, "Approval Status") { }
    }
    local procedure CalculateNwedate()
    var
        myInt: Integer;
    begin
        "Date Result" := CalcDate("Date formula to Test", "Reference for Date Calculation");
    end;

    var
        student: Codeunit student;

    trigger OnInsert()
    var
        setup: Record "Student setup";
        NOmgt: Codeunit NoSeriesManagement;
    begin
        if No = '' then begin
            setup.Get();
            No := NOmgt.GetNextNo(setup."Student NOseries", WorkDate, true);


        end;

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}