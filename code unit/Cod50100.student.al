codeunit 50100 student
{
    trigger OnRun()
    begin

    end;

    procedure GetFullname(firstame: text; middlename: text; surname: text) fullname: text
    var
        myInt: Integer;
    begin
        fullname := firstame;
        IF middlename <> '' then begin
            if fullname <> '' then
                fullname += '' + middlename
            else
                fullname := middlename;


        end;
        if surname <> '' then begin
            if fullname <> '' then
                fullname += '' + surname
            else
                fullname := middlename

        end;
        exit(fullname)
    end;
}
