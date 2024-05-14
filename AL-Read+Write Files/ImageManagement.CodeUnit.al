codeunit 50110 ImageManagement
{
    procedure ImportItemPicture(Item: "Record Item")
    var
        PicInStream: InStream;
        FromFileName: Text;
        OverrideImageQst: Label 'The existing pictre will be replaces. Continue?';
    begin
        with Item do begin
            if Picture.Count() > 0 then
                exit;
            if File.UploadIntoStream('Import', '', 'All Files (*.*)|*.*',
                                    FromFileName, PicInStream) then begin
                Clear(Picture);
                Picture.ImportStream(PicInStream, FromFileName);
                Modify(true);
            end;
        end;
    end;

    // trigger OnRun()
    // begin

    // end;

    // var
    //     myInt: Integer;
}