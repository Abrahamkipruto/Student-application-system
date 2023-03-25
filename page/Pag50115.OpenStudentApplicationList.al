page 50115 "Open Student Application List"
{
    Caption = 'Open Student Application List';
    PageType = List;
    SourceTable = StudentApplication;
    SourceTableView = where("Approval Status" = const(Open));
    ApplicationArea = all;
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
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No field.';
                }
                field(fullname; Rec.fullname)
                {
                    ApplicationArea = All;
                    ToolTip = 'specifies fullname of the student';
                }
                field(Grade; Rec.Grade)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Grade';
                }
                field(Course; Rec.Course)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies The Course';
                }
                field(emails; Rec.emails)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the email of the student';
                }
                field("Approval Status"; Rec."Approval Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Approval Status field.';
                }
            }
        }
    }
}
