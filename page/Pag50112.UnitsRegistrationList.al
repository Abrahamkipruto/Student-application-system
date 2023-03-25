page 50112 "Units Registration List"
{
    ApplicationArea = All;
    Caption = 'Units Registration List';
    PageType = List;
    SourceTable = "Units Registration";
    UsageCategory = Lists;
    CardPageId = "Units Registration";

    layout
    {
        area(content)
        {
            repeater(General)
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
                field("year of study"; Rec."year of study")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Year Of Study field.';
                }
                field("unit code"; Rec."unit code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Unit Code field.';
                }
                field("unit description"; Rec."unit description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the unit description';
                }


            }


        }
    }
}
