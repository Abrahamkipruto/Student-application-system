page 50101 "Studsetup"
{
    Caption = 'Stud setup';
    PageType = Card;
    SourceTable = "Student setup";
    UsageCategory = Documents;
    ApplicationArea = all;
    DeleteAllowed = false;
    DelayedInsert = false;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Student NOseries"; Rec."Student NOseries")
                {
                    ToolTip = 'Specifies the value of the Student NOseries field.';
                    ApplicationArea = All;
                }
                field(No; No)
                {
                    ApplicationArea = All;

                }
            }
        }
    }
}
