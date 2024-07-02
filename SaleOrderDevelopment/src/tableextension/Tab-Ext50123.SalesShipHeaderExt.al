/// <summary>
/// TableExtension SalesShipHeaderExt (ID 50100) extends Record Sales Shipment Header.
/// </summary>
tableextension 50123 SalesShipHeaderExt extends "Sales Shipment Header"
{
    fields
    {
        field(50110; "Service Code"; Code[20])
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
            CalcFormula = lookup("Outsource Service".Description where(Code = field("Service Code")));
        }
        field(50112; "Service Type"; Enum "TypeEnumList")
        {
            Caption = 'Service Type';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup("Outsource Service".Type where(Code = field("Service Code")));
        }
        field(50113; "Service Unit of Measure"; Code[50])
        {
            Caption = 'Service Unit of Measure';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup("Outsource Service"."Unit of Measure" where(Code = field("Service Code")));
        }
        field(50114; "Service Quantity"; Decimal)
        {
            Caption = 'Service Quantity';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup("Outsource Service".Quantity where("Code" = field("Service Code")));
        }
    }
}
