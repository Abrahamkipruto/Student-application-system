page 50107 "Admin lists"
{
    Caption = 'Admin lists';
    PageType = List;
    SourceTable = ADMIN;
    CardPageId = Admin;
    ApplicationArea = all;
    UsageCategory = Documents;
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(General)
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
                field(year; Rec.year)
                {
                    ToolTip = 'Specifies the value of the YEAR field.';
                    ApplicationArea = All;
                }
                field(Registration; Rec.Registration)
                {
                    ToolTip = 'Specifies the value of the Registration  no of the student field.';
                    ApplicationArea = All;
                }
                field(Status; Status)
                {
                    ApplicationArea = All;

                }
            }
        }
    }
}
