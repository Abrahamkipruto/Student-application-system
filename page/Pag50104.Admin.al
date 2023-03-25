page 50104 Admin
{
    Caption = 'Admin';
    PageType = Card;
    SourceTable = ADMIN;
    ApplicationArea = all;
    UsageCategory = Documents;


    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                    ToolTip = 'Specifies the value of the Reg No. field.';
                    ApplicationArea = All;
                }
                field("Full name"; Rec."Full name")
                {
                    ToolTip = 'Specifies the value of the Fullname field.';
                    ApplicationArea = All;
                }

            }
            group(DepartmentSection)
            {
                field(department; Rec.department)
                {
                    ToolTip = 'Specifies the value of the Department field.';
                    ApplicationArea = All;
                }
                field(course; Rec.course)
                {
                    ToolTip = 'Specifies the value of the course  field.';
                    ApplicationArea = All;
                }
                field("course description"; Rec."course description")
                {
                    ToolTip = 'Specifies the value of the Course Description field.';
                    ApplicationArea = All;
                }
                field(year; year)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the YEAR field.';
                }
                field(Registration; Registration)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Registration  no of the student field.';

                }
                field(Status; Status)
                {
                    ApplicationArea = All;

                }
            }


        }
    }
}
