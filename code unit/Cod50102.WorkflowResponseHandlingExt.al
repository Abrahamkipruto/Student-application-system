codeunit 50106 "Workflow Response Handling Ext"
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Response Handling", 'onReleasedocument', '', true, true)]

    local procedure OnReleasedocument(RecRef: RecordRef; var Handled: Boolean)
    var
        job: Record StudentApplication;

    begin
        case RecRef.Number of
            database::StudentApplication:
                begin
                    RecRef.SetTable(job);
                    job."Approval status" := job."Approval status"::released;
                    Handled := true;
                    job.Modify;
                end;


        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Approvals Mgmt.", 'OnsetstatusTopendingApproval', '', true, true)]
    local procedure OnsetStatusToPendingApproval(RecRef: RecordRef; var Variant: Variant; var IsHandled: Boolean)

    var
        Job: Record StudentApplication;

    begin
        case
            RecRef.Number of
            database::StudentApplication:
                begin
                    RecRef.SetTable(Job);
                    Job."Approval status" := Job."Approval status"::"Pending Approval";
                    Job.Modify;
                    IsHandled := true;
                end;
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Response Handling", 'onOpenDocument', '', true, true)]

    local procedure OnreleaseOpenDocument(RecRef: RecordRef; var Handled: Boolean)
    var
        Job: Record StudentApplication;

    begin
        case RecRef.Number of
            database::StudentApplication:
                begin
                    RecRef.SetTable(Job);
                    Job."Approval status" := Job."Approval status"::open;
                    Job.Modify;
                    Handled := true;
                end;

        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Response Handling", 'OnAddworkflowresponsepredecessorsTolibrary', '', true, true)]
    local procedure onAddworkflowresponsePredecessorTolibrary(ResponseFunctionName: Code[128])
    var
        workflowresponsehandling: Codeunit 1521;
        workfloweventhandlingcust: Codeunit 50103;
    begin
        case ResponseFunctionName of
            workflowResponsehandling.SetStatusToPendingApprovalCode:
                workflowresponsehandling.AddResponsePredecessor(workflowresponsehandling.SetStatusToPendingApprovalcode,
                   workfloweventhandlingcust.RunworkflowOnSendStudentregisteredApprovalCode);

            workflowresponsehandling.SendApprovalRequestForApprovalCode:
                workflowresponsehandling.AddResponsePredecessor(workflowresponsehandling.SendApprovalRequestForApprovalCode,
                 workflowEventhandlingcust.runworkflowonsendStudentRegisteredapprovalcode);

            workflowresponseHandling.CancelAllApprovalRequestsCode:
                WorkflowResponseHandling.AddResponsePredecessor(workflowResponseHandling.SendApprovalRequestForApprovalCode,
                  workfloweventhandlingcust.RunworkflowOnCancelStudentRegisteredApprovalCode());
            workflowresponsehandling.OpenDocumentCode:
                workflowresponsehandling.AddResponsePredecessor(workflowresponsehandling.OpenDocumentCode,
                   workfloweventhandlingcust.RunworkflowOnCancelStudentRegisteredApprovalCode());



        end;
    end;


    var
        myInt: Integer;
}
