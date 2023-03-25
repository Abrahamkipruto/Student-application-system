page 50111 "Units Registration"
{
    Caption = 'Unit Registration';
    PageType = Card;
    SourceTable = "Units Registration";
    ApplicationArea = all;
    UsageCategory = Documents;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Student Registration No."; Rec."Student Registration No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Student Registration No. field.';
                }
                field(FullName; Rec.FullName)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the FullName field.';
                }
                field(Course; Rec.Course)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Course field.';
                }
                // field("year of study"; Rec."year of study")
                // {
                //     ApplicationArea = All;
                //     ToolTip = 'Specifies the value of the Year Of Study field.';
                // }
                // field("unit code"; Rec."unit code")
                // {
                //     ApplicationArea = All;
                //     ToolTip = 'Specifies the value of the Unit Code field.';
                // }
                // field("unit description"; "unit description")
                // {
                //     ApplicationArea = All;
                //     ToolTip = 'Specifies the value of the unit description';
                // }


            }
            part(studentregistration; "Courses-Registration")
            {

                ApplicationArea = all;


            }

        }




    }
    actions
    {
        area(Processing)
        {
            action(Submit)
            {
                ApplicationArea = all;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Caption = 'Submit';


            }
        }
    }
}
