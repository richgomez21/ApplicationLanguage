/// <summary>
/// TableExtension Purchase Line Ext (ID 50126) extends Record Purchase Line.
/// </summary>
tableextension 50126 "Purchase Line Ext" extends "Purchase Line"
{
    fields
    {
        field(50101; "Service Code R"; Code[10])
        {
            Caption = 'Service Code';
            DataClassification = ToBeClassified;
        }
    }
}
