page 50100 "Student Application"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = StudentApplication;
    PromotedActionCategories = 'New,Process,Report,Approve,Request Approval,New Document,Navigate,Incoming Documents,Vendor';



    layout
    {
        area(Content)
        {
            group("Student Details")
            {
                field(No; No)
                {
                    ApplicationArea = All;

                }
                field(Firstname; Firstname)
                {
                    ApplicationArea = All;
                    ToolTip = 'specifies firstname of the student';
                }
                field(middlename; middlename)
                {
                    ApplicationArea = All;
                    ToolTip = 'specifies middlename of the student';
                }
                field(surname; surname)
                {
                    ApplicationArea = All;
                    ToolTip = 'specifies surname of the student';
                }
                field(fullname; fullname)
                {
                    ApplicationArea = All;
                    ToolTip = 'specifies fullname of the student';
                }
                field("date of birth"; "date of birth")
                {
                    ApplicationArea = All;
                    ToolTip = 'specifies the   date of birth of the student';
                }
                field(Age; Age)
                {
                    ApplicationArea = All;
                    ToolTip = 'specifies Age of the student';

                }
                field(Gender; Gender)
                {
                    ApplicationArea = All;
                    ToolTip = 'specifies the Gender of the student';
                }
                field("Approval Status"; "Approval Status")
                {
                    ApplicationArea = All;

                }
                field(Signature; Signature)
                {
                    ApplicationArea = All;

                }

            }
            group("Education Details")
            {
                field("School Attended"; "School Attended")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the School Attended';
                }
                field(From; From)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies The Year Attended School';
                }
                field(Grade; Grade)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Grade';
                }
                field(Course; Course)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies The Course';
                }
                field("Course Description"; "Course Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies The Course Description';
                }
            }
            group("Student Address section")
            {
                field("Phone no"; "Phone no")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Phone Number of the student';


                }
                field(emails; emails)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the email of the student';

                }
                field(Address; Address)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the address of the student';
                }
                field(Nationality; Nationality)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies The Nationality Of The Student';
                }
                field("National ID"; "National ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies The National ID Of The Student';
                }
                field("Marital Status"; "Marital Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies The Marital Status Of The Student';
                }
                field(Religion; Religion)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Religion Of The Student';
                }
                field(County; County)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies Which  County The Student Come From of Student';
                }
            }
            group("Parent/Guardian Details")
            {
                field("next of kin"; "next of kin")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the next of kin of the student';

                }
                // field(Relationship; Relationship)
                // {
                //     ApplicationArea = All;
                //     ToolTip = 'Specifies the relationship of student to the parent/Guardian';

                // }
                field("Parent/Guardian Phone Number"; "Parent/Guardian Phone Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the Phone Number of the parent/Guardian';

                }
                field("f-name"; "f-name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the fullname of the parent/Guardian';
                }
                field("Parent/Guardian email"; "Parent/Guardian email")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the email of the parent/Guardian';
                }
            }



        }
    }

    actions
    {
        area(Processing)
        {
            group("Request Approval")
            {
                action(Approvals)

                {

                    Caption = 'Approvals';

                    Image = Approvals;

                    Promoted = true;

                    PromotedCategory = Category4;

                    PromotedIsBig = true;



                    trigger OnAction()

                    var

                        ApprovalEntries: Page "Approval Entries";

                        ApprovalEntry: Record "Approval Entry";

                        DocType: Enum "Approval Document Type";

                    begin

                        ApprovalEntries.SetRecordFilters(DATABASE::StudentApplication, DocType::" ", No);

                        ApprovalEntries.Run;

                    end;

                }
                group(Approval)
                {
                    action("Send Approval Request")
                    {
                        Visible = true;
                        image = SendApprovalRequest;
                        Promoted = true;
                        PromotedCategory = Category5;
                        PromotedIsBig = true;
                        Enabled = "Approval Status" = "Approval Status"::Open;
                        trigger OnAction()
                        begin
                            If ApprovalsMgmtCut.CheckStudentRegisteredApprovalWorkflowEnable(rec) then
                                ApprovalsMgmtCut.onsendStudentRegisteredapproval(Rec);
                        end;
                    }
                    action("Cancel Approval Request")
                    {
                        Visible = true;
                        Image = CancelApprovalRequest;
                        Promoted = true;
                        PromotedCategory = Category5;
                        PromotedIsBig = true;
                        Enabled = "Approval Status" = "Approval Status"::"Pending Approval";

                        trigger OnAction()
                        begin
                            ApprovalsMgmtCut.OnCancelStudentRegisteredForApproval(Rec)
                        end;
                    }

                }

            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        OpenApprovalEntriesExistForCurrser := ApprovalsMgt.HasOpenApprovalEntriesForCurrentUser(RecordId);
        openapprovalEntriesExist := approvalsmgt.HasApprovalEntries(RecordId);
        CancancelapprovalforRecord := approvalsmgt.CanCancelApprovalForRecord(RecordId);
        workflowflowwebhookmgt.GetCanRequestAndCanCancel(RecordId, Cancel, Cancancelapprovalforflow);
    end;

    var
        approvalsmgt: Codeunit 1535;
        ApprovalsMgmtCut: Codeunit 50101;
        workflowflowwebhookmgt: Codeunit 1543;
        openapprovalEntriesExistForCurrser: Boolean;
        openapprovalEntriesExist: Boolean;
        CancancelapprovalforRecord: Boolean;
        Cancancelapprovalforflow: Boolean;
        CanreguestapprovalforRecord: Boolean;
        Cancel: Boolean;

}