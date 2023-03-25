page 50102 "studentApplication list"
{
    ApplicationArea = All;
    Caption = 'studentApplication list';
    PageType = List;
    SourceTable = StudentApplication;
    // SourceTableView = where("Approval Status" = const(Released));

    UsageCategory = Lists;
    CardPageId = "Student Application";



    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(No; Rec.No)
                {
                    ToolTip = 'Specifies the value of the No field.';
                    ApplicationArea = All;
                }
                // field(Firstname; Rec.Firstname)
                // {
                //     ToolTip = 'specifies firstname of the student';
                //     ApplicationArea = All;
                // }
                // field(middlename; Rec.middlename)
                // {
                //     ToolTip = 'specifies middlename of the student';
                //     ApplicationArea = All;
                // }
                // field(surname; Rec.surname)
                // {
                //     ToolTip = 'specifies surname of the student';
                //     ApplicationArea = All;
                // }
                field(fullname; Rec.fullname)
                {
                    ToolTip = 'specifies fullname of the student';
                    ApplicationArea = All;
                }
                field("Reference for Date Calculation"; "Reference for Date Calculation")
                {
                    ApplicationArea = All;

                }
                field("Date formula to Test"; "Date formula to Test")
                {
                    ApplicationArea = All;

                }
                field("Date Result"; "Date Result")
                {
                    ApplicationArea = All;

                }
                // field("date of birth"; "date of birth")
                // {
                //     ApplicationArea = All;
                // }
                // field(Age; Age)
                // {
                //     ApplicationArea = All;
                // }
                field(Gender; Gender)
                {
                    ApplicationArea = All;
                }
                field("Approval Status"; "Approval Status")
                {
                    ApplicationArea = All;

                }
                field("School Attended"; "School Attended")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies The School Attended';
                }
                // field(From; From)
                // {
                //     ApplicationArea = All;
                //     ToolTip = 'Specifies The years you attended School';
                // }
                field(Grade; Grade)
                {
                    ApplicationArea = All;
                    ToolTip = 'Species The Student Grade';
                }
                field(Course; Course)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies The Course';
                }
                // field("Course Description"; "Course Description")
                // {
                //     ApplicationArea = All;
                //     ToolTip = 'Specifies The Course Description';
                // // }
                // field("Phone no"; "Phone no")
                // {
                //     ApplicationArea = All;
                //     ToolTip = 'Specifies the Phone Number of the student';

                // }
                field(emails; emails)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the email of the student';

                }
                //                 field(Address; Address)
                //                 {
                //                     ApplicationArea = All;
                //                     ToolTip = 'Specifies the address of the student';
                //                 }
                //                 field("National ID"; "National ID")
                //                 {
                //                     ApplicationArea = All;
                //                     ToolTip = 'Specifies The National ID';
                //                 }
                //                 field("Marital Status"; "Marital Status")
                //                 {
                //                     ApplicationArea = All;
                //                     ToolTip = 'Specifies The Marital Status';
                //                 }
                //                 field(Religion; Religion)
                //                 {
                //                     ApplicationArea = All;
                //                     ToolTip = 'Specifies The Religion';
                //                 }
                //                 field(County; County)
                //                 {
                //                     ApplicationArea = All;
                //                     ToolTip = 'Specifies The County';
                //                 }

                //                 field("next of kin"; "next of kin")
                //                 {
                //                     ApplicationArea = All;
                //                     ToolTip = 'Specifies the next of kin of the student';

                //                 }
                //                 // field(Relationship; Relationship)
                //                 // {
                //                 //     ApplicationArea = All;
                //                 //     ToolTip = 'Specifies the relationship of student to the parent/Guardian';

                //                 // }
                //                 field("Parent/Guardian Phone Number"; "Parent/Guardian Phone Number")
                //                 {
                //                     ApplicationArea = All;
                //                     ToolTip = 'Specifies the Phone Number of the parent/Guardian';

                //                 }
                //                 field("f-name"; "f-name")
                //                 {
                //                     ApplicationArea = All;
                //                     ToolTip = 'Specifies the fullname of the parent/Guardian';
                //                 }
                //                 field("Parent/Guardian email"; "Parent/Guardian email")
                //                 {
                //                     ApplicationArea = All;
                //                     ToolTip = 'Specifies the email of the parent/Guardian';
                //                 }
            }
        }
    }
}
