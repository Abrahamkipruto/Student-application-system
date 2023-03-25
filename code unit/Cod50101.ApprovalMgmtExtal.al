codeunit 50101 "ApprovalMgmtExt.al"
{
    trigger OnRun()
    begin

    end;

    [IntegrationEvent(false, false)]
    procedure OnsendStudentRegisteredApproval(var Student: Record StudentApplication)
    begin
    end;

    [IntegrationEvent(false, false)]
    procedure OnCancelStudentRegisteredForApproval(var Student: Record StudentApplication)
    begin
    end;

    procedure CheckStudentRegisteredApprovalworkflowEnable(var student: Record StudentApplication): Boolean

    var
        myInt: Integer;
    begin
        if not IsStudentRegisteredDocApprovalsworkflowEnable(student) then
            Error(NoworkflowEnableErr);
        exit(true);
    end;

    procedure IsStudentRegistereddocApprovalsWorkflowEnable(var student: Record StudentApplication): Boolean
    begin
        if student."Approval status" <> student."Approval status"::open then
            exit(false);
        exit(workflowmanagent.CanExecuteWorkflow(student, workflowEventHandlingCust.RunworkflowOnSendStudentRegisteredApprovalCode()));
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Approvals Mgmt.", 'OnPopulateApprovalEntryArgument', '', true, true)]
    local procedure onpopulateApprovalEntryArgument(var RecRef: RecordRef; var ApprovalEntryArgument: Record "Approval Entry";
         WorkflowStepInstance: Record "workflow step Instance")

    var
        Stud: Record StudentApplication;

    begin
        case RecRef.Number of
            database::StudentApplication:
                begin
                    RecRef.SetTable(Stud);
                    ApprovalEntryArgument."Document No." := Stud.No;
                end;
        end;
    end;


    var
        workflowmanagent: Codeunit 1501;
        WorkfloweventhandlingCust: Codeunit 50103;
        NoworkflowEnableErr: TextConst ENU = 'No approval workflow for this record type is enabled.';
}
