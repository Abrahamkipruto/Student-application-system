page 50117 "Releases Student Application "
{
    Caption = 'Releases Student Application ';
    PageType = List;
    SourceTable = StudentApplication;
    SourceTableView = where("Approval Status" = const(Released));


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
                field(Grade; Rec.Grade)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Grade';
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
