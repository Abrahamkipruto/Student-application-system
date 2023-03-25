codeunit 50104 "Workflow Setup  Ext"
{
    /*trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Setup", 'OnAddworkflowCategoriesToLibrary', '', true, true)]
    local procedure OnAddWorkflowCategoriesToLibrary()
    begin
        workflowSetup.insertworkflowcategory(ClaimworkflowcategoryTxt, ClaimworkflowcategoryTxt);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Setup", 'OnAfterInsertApprovalsTableRelations', '', true, true)]
    local procedure OnAfterInsertTableRelation()
    var
        approvalEntry: Record 454;
    begin
        workflowsetup.insertTableRelation(Database::StudentApplication, 0, Database::"Approval Entry", approvalEntry.FieldNo("Record ID to Approve"));

    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Setup", 'OnInsertWorkflowTemplates', '', true, true)]
    local procedure OnInsertWorkflowTemplate()
    begin
        insertclaimApprovalWorkflowTemplate();
    end;

    local procedure InsertClaimApprovalWorkflowTemplate()
    var
        workflow: Record 1501;
    begin
        workflowsetup.insertworkflowTemplate(workflow, ClaimworkflowcategoryTxt, claimApprovalWorkflowDescTxt, ClaimworkflowcategoryTxt);
        InsertClaimApprovalWorkflowdetails(workflow);
        workflowsetup.markworkflowAsTemplate(workflow);
    end;

    local procedure InsertClaimApprovalWorkflowdetails(var workflow: Record 1501)
    var
        workflowsetArgument: Record 1523;
        Blankdateformula: DateFormula;
        workflowResponseHandlingCust: Codeunit 50104;
        workflowresponding: Codeunit 1521;
        job: Record StudentApplication;
    begin
        workflowsetup.PopulateWorkflowStepArgument(workflowsetArgument,
           workflowsetArgument."Approver Type"::Approver, workflowstepArgument."approver limit type"::"direct Approver", 0, '', Blankdateformula, true);

        workflowsetup.insertDocApprovalworkflowsteps(
          workflow,
          buildclaimtypeconditions(job."Approval status"::Open),
          workflowEventHandlingCust.RunworkflowSendClaimforApprovalCode,
          BuildClaimTypeConditions(job."Approval status"::re)
            workflowEventHandlingCust.RunworkflowOncancelClaimApprovalcode,
          workflowstepArgument,
          true);
    end;

    local procedure BuildClaimTypeConditions(status: Integer): Text
    var
        claim: Record StudentApplication;
    begin
        claim.setrange("Approval Status", status);
        exit(StrSubstNo(ClaimworkflowcategoryTxt, workflowSetup.Encode(claim.GetView(false))));
    end;


    var
        workflowsetup: Codeunit 1502;
        ClaimworkflowcategoryTxt: TextConst 'CDW';

        ClaimWorkflowCategoryDescTxt: TextConst 'Claim Document';

        ClaimApprovalWorkflowCodeTxt: TextConst 'CAPW';

        ClaimApprovalWorkfowDescTxt: TextCont 'Claim Approval Workflow';

      ClaimTypeCondTxt: TextConst ENU '<?xml version = "1.0" encoding="utf-8" standalone="yes"?><ReportParameters><DataItems><DataItem name="Claim">%1</DataItem></DataItems></ReportParameters>
      ;*/

}
