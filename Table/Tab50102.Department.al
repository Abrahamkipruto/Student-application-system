table 50102 "Courses Setup"
{
    Caption = 'Department ';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "Department code"; Code[200])
        {
            DataClassification = ToBeClassified;
            Caption = 'Department Code';

        }

        field(2; Course; Code[200])
        {
            Caption = ' Course Code';
            DataClassification = ToBeClassified;
            // OptionMembers = "ED",EDS,EDG,COM,BIT,AST,AE,FS,AB;

        }
        field(3; "Course Description"; Code[200])
        {
            Caption = 'Course Description';
            DataClassification = ToBeClassified;
            // OptionMembers = "BSC.Education science","BSC.Education Arts","BSC.Education with guidance and technology"
            // ,"BSC.Computer Science","BSC.Information And TEchnology","BSC.Applied Statistics","BSC.Agricultural Extension","BSC.Foood and Security","BSC.Agriculture and BIOchnotology";
        }
        field(4; "Course Duration"; Code[20])
        {
            DataClassification = ToBeClassified;
            caption = 'Course Duration';

        }

        // field(4; year; Enum year)
        // {
        //     DataClassification = ToBeClassified;

        //     trigger OnValidate()
        //     begin
        //         "Reg.No" := Format(course) + Format('/') + Format(year);
        //     end;
        // }
        // field(5; "Reg.No"; Code[200])
        // {
        //     DataClassification = ToBeClassified;
        //     Caption = 'RegNo';
        //     Editable = false;

        // }

    }
    keys
    {
        key(PK; course)
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; course, "course description")
        { }
    }
}
