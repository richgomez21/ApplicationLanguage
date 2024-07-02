/// <summary>
/// TableExtension Purchase Header Ext (ID 50127) extends Record Purchase Header.
/// </summary>
tableextension 50127 "Purchase Header Ext" extends "Purchase Header"
{
    fields
    {
        field(50110; "Service Code R"; Code[20])
        {
            Caption = 'Service Code';
            DataClassification = ToBeClassified;
            TableRelation = "Outsource Service".Code;
        }
        field(50111; "Service Description"; Text[50])
        {
            Caption = 'Service Description';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup("Outsource Service".Description where(Code = field("Service Code R")));
        }
        field(50112; "Service Type"; Enum "TypeEnumList")
        {
            Caption = 'Service Type';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup("Outsource Service".Type where(Code = field("Service Code R")));
        }
        field(50113; "Service Unit of Measure"; Code[50])
        {
            Caption = 'Service Unit of Measure';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup("Outsource Service"."Unit of Measure" where(Code = field("Service Code R")));
        }
        field(50114; "Service Quantity"; Decimal)
        {
            Caption = 'Service Quantity';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup("Outsource Service".Quantity where("Code" = field("Service Code R")));
        }
    }
}
