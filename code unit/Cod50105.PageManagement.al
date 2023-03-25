codeunit 50105 "Page Management Ext"


{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Page Management", 'OnAfterGetpageID', '', true, true)]
    local procedure OnAfterGetpageID(recordRef: RecordRef; var PageID: Integer)
    begin
        if PageID = 0 then
            PageID := GetConditionalCardPageIG(recordRef);
    end;

    local procedure GetConditionalCardPageIG(Recordref: RecordRef): Integer
    var
        myInt: Integer;
    begin
        case Recordref.Number of
            database::StudentApplication:
                exit(page::"Student Application")
        end;
    end;
}

