pageextension 50100 "Jobs Ext" extends "Job Card"
{
    layout
    {
        addafter("Project Manager")
        {
        //     field("Approval status"; "Approval status")
        //     {
        //         ApplicationArea = all;
        //     }
        }
    }
    actions
    {
        addfirst(processing)
        {
            group("Request Approval")
            {
                action(Approve)
                {
                    Image = Approve;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedCategory = Process;
                    PromotedOnly = true;
                    trigger OnAction()
                    begin
                        // ApprovalMgmt.ApproveRecordApprovalRequest(RecordId);
                    end;
                }

            }
        }
        addafter("Request Approval")
        {
            group(Approval)
            {
                action("Send Approval Request")
                {
                    Visible = false;
                    image = SendApprovalRequest;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedOnly = true;
                    trigger OnAction()
                    begin
                        // IF ApprovalsMgmtCut.CheckjobApprovalWorkflowEnable(Rec) then
                        // approvalMgmtcut.OnSendjobForApproval(Rec);
                    end;
                }
                action("Cancel Approval REquest")
                {
                    Visible = false;
                    Image = CancelApprovalRequest;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedOnly = true;
                    trigger OnAction()
                    begin
                        // ApprovalMgmtCut.OnCancelClaimForApproval(Rec);
                    end;
                }

            }
        }
    }
    //     trigger OnAfterGetRecord() 
    //     begin
    //          openapprovalentriesExistforcurruntuser(RecordID);
    //         openapprovalentriesexist := approvalismgt.hasopenApprovalEntries( RecordID);
    //         calcancelApprovalForRecord := approvalmgt.cancancelApprovalForRecord( RecordID);
    //         Workflowebhookmgt.GetcanRequestcancancel(RecordId,canrequestapprovalforflow,cancancelApprovalforflow);
    //     end;
    //      approvalsmgt: Codeunit 1535;
    //     approvalsMgtcut: Codeunit 50103;
    //     workflowflowwebhookmgt :Codeunit 1543;
    //      openapprovalEntriesExistForCurrser:Boolean;
    //      openapprovalEntriesExist:Boolean;
    //       CancancelapprovalforRecord:Boolean;

    //       Cancancelapprovalforflow: Boolean;
    //       CanreguestapprovalforRecord :Boolean;


    // }

}