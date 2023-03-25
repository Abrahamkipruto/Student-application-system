page 50114 "Department Setup"
{
    ApplicationArea = All;
    Caption = 'Department Setup';
    PageType = List;
    SourceTable = "Department Setup";
    UsageCategory = Lists;

    layout
    {

        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Code field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                }
            }
        }

    }
    actions
    {
        area(Processing)
        {
            action(Courses)
            {
                ApplicationArea = all;
                Caption = 'Courses';
                RunObject = page "Course lists";
                RunPageLink = "Department code" = field(Code);

                Promoted = true;
                PromotedCategory = Process;
                Image = Action;

            }
        }
    }



}
