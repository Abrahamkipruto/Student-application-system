codeunit 50103 "Workflow Event Handling Ext"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Event Handling", 'OnAddWorkflowEventsToLibrary', '', true, true)]
    local procedure OnAddworkflowEventTolibrary()
    begin
        workflowEventhandling.AddEventToLibrary(RunworkflowOnSendStudentRegisteredApprovalCode(), Database::StudentApplication, claimSendForApprovalEventDescTxt, 0, false);
        workflowEventhandling.AddEventToLibrary(RunworkflowOnCancelStudentRegisteredApprovalCode(), Database::StudentApplication, ClaimCancelApprovalRequestEventDescTxt, 0, false);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Event Handling", 'OnAddWorkflowEventPredecessorsToLibrary', '', true, true)]
    local procedure OnAddworkfloweventpredessorTolibrary(Eventfunctionname: code[128])
    begin
        case Eventfunctionname of
            RunWorkFlowOnCancelStudentRegisteredApprovalCode:
                WorkflowEventHandling.Addeventpredecessor(RunworkflowoncancelStudentregisteredApprovalcode, RunworkflowOnSendStudentRegisteredApprovalCode());
            workflowEventHandling.runworkflowonApproveApprovalRequestcode:
                workflowEventHandling.addEventpredecessor(workflowEventhandling.runworkflowonApproveApprovalRequestcode, RunworkflowOnSendStudentRegisteredApprovalCode());
        end;
    end;

    procedure RunworkflowOnSendStudentRegisteredApprovalCode(): Code[128]
    begin
        exit(UpperCase('RunworkflowOnSendStudentRegisteredForApproval'));
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"ApprovalMgmtExt.al", 'OnsendStudentRegisteredApproval', '', true, true)]
    local procedure RunWorkflowOnSendStudentRegisteredApproval(var Student: Record StudentApplication)
    begin
        workflowmanagement.handleEvent(RunworkflowOnSendStudentRegisteredApprovalCode(), Student);
    end;

    procedure RunworkflowOnCancelStudentRegisteredApprovalCode(): Code[128]
    begin
        exit(UpperCase('RunworkflowOncancelStudentRegisteredForapproval'));
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"ApprovalMgmtExt.al", 'onCancelStudentRegisteredForApproval', '', true, true)]
    procedure RunworkflowcancelStudentRegisteredApproval(var Student: Record StudentApplication)
    begin
        workflowManagement.HandleEvent(RunworkflowOnSendStudentRegisteredApprovalCode(), Student);
    end;

    var
        workflowmanagement: Codeunit 1501;
        workflowEventhandling: Codeunit 1520;
        claimSendForApprovalEventDescTxt: TextConst ENU = 'Approval of Student Application document is requested';
        ClaimCancelApprovalRequestEventDescTxt: TextConst ENU = 'Approval of a Student Application document is canceled';
}

