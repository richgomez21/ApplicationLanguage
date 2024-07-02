codeunit 50103 StringCodeUnit
{
    TableNo = StringChallenge;

    trigger OnRun()
    begin
        string1 := '';
        string1 := FilterString(string1);
        MESSAGE('Filtered String: %1', string1);
    end;

    procedure FilterString(var InputString: Text): Text
    begin
        InputString := DELCHR(InputString, '1234567890');
        exit(InputString);
    end;

    var
        string1: Text;

}
