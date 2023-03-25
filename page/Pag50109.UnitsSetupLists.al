page 50109 "Units Setup Lists"
{
    ApplicationArea = All;
    Caption = 'Units Setup Lists';
    PageType = List;
    SourceTable = units;
    CardPageId = "Units Setup";
    UsageCategory = Lists;



    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Course Code"; Rec."Course Code")
                {
                    ToolTip = 'specifies the course code of the course';
                    ApplicationArea = All;
                }
                // field("Year and semester study"; "Year and semester study")
                // {
                //     ApplicationArea = All;
                //     ToolTip = 'specifies the Year and semester of studcourse';

                // }
                field("Unit Code"; Rec."Unit Code")
                {
                    ToolTip = 'specifies the unit code done by the student';
                    ApplicationArea = All;
                }
                field("Unit Description"; Rec."Unit Description")
                {
                    ToolTip = 'specifies the unit description of the unit code';
                    ApplicationArea = All;
                }
            }
        }
    }
    //     actions
    //     {
    //         area(Navigation)
    //         {
    //             action(Units)
    //             {
    //                 ApplicationArea = all;
    //                 Caption = 'Units';
    //                 RunObject = page "Units Setup Lists";
    //                 RunPageLink = "Unit Code" = field("Course Code");
    //                 Promoted = true;
    //                 PromotedCategory = Process;
    //                 Image = Action;

    //             }
    //         }
    //     }

}
