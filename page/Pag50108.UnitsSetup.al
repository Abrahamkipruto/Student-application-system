page 50108 "Units Setup"
{
    Caption = 'Units Setup';
    PageType = Card;
    SourceTable = units;
    ApplicationArea = all;
    UsageCategory = Documents;


    layout
    {
        area(content)
        {
            group("Course and unit")
            {
                field("Course Code"; "Course Code")
                {
                    ApplicationArea = All;

                }
                field("Unit Code"; "Unit Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'specifies the unit code done by the student';

                }
                field("Unit Description"; "Unit Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'specifies the unit description of the unit code';
                }

            }
        }
    }
}
