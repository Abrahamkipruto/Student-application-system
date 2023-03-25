page 50113 "Courses-Registration"
{
    Caption = 'Unit Registration';
    PageType = ListPart;
    SourceTable = "Units Registration";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Course; Rec.Course)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Course field.';
                    trigger OnDrillDown()
                    begin

                    end;
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
                field("year of study"; Rec."year of study")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Year Of Study field.';
                }
            }
        }
    }
}
