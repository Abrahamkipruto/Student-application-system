page 50105 "Course lists"
{
    ApplicationArea = All;
    Caption = 'Courses lists';
    PageType = List;
    SourceTable = "Courses Setup";
    UsageCategory = Lists;
    CardPageId = "Courses Setup";


    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Department code"; "Department code")
                {
                    ApplicationArea = All;
                    Caption = '  Department Code';
                }
                field(course; Rec.course)
                {
                    ToolTip = 'specifies the course description';
                    ApplicationArea = All;
                }
                field("course description"; Rec."course description")
                {
                    ToolTip = 'specifies the course description';
                    ApplicationArea = All;
                }
            }
        }

    }
    actions
    {
        area(Navigation)
        {
            action(Units)
            {
                ApplicationArea = all;
                Caption = 'Units';
                RunObject = page "Units Setup Lists";
                RunPageLink = "Course Code" = field(course);
                Promoted = true;
                PromotedCategory = Process;
                Image = Entry;

            }
        }
    }

}

