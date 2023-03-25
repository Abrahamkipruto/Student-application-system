page 50103 "Courses Setup"
{
    Caption = 'Courses Setup';
    PageType = Card;
    SourceTable = "Courses Setup";
    UsageCategory = Lists;
    ApplicationArea = all;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Department code"; "Department code")
                {
                    ApplicationArea = All;
                    Caption = 'Department Code';
                }

                field(course; course)
                {
                    ApplicationArea = All;
                    ToolTip = 'specifies the course description';

                }
                field("course description"; "course description")
                {
                    ApplicationArea = All;
                    ToolTip = 'specifies the course description';
                }
                field("Course Duration"; "Course Duration")
                {
                    ApplicationArea = All;
                    ToolTip = '   Specifies The Duration Of The Course';
                }
                // field(year; year)
                // {
                //     ApplicationArea = All;
                //     ToolTip = 'specifies the year of study';
                // }
                // field("Reg.No"; "Reg.No")
                // {
                //     ApplicationArea = All;

                // }

            }
        }
    }
}
