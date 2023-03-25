page 50126 "InActive Student"
{
    Caption = 'InActive Student';
    PageType = List;
    SourceTable = ADMIN;
    SourceTableView = where(Status = const(InActive));
    ApplicationArea = ALL;
    UsageCategory = Lists;


    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Reg No. field.';
                }
                field("Full name"; Rec."Full name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Fullname field.';
                }
                field(department; Rec.department)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Department field.';
                }
                field(course; Rec.course)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the course  field.';
                }
                field(Registration; Rec.Registration)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Registration  no of the student field.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status field.';
                }
            }
        }
    }
}
