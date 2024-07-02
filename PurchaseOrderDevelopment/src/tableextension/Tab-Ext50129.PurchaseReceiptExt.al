/// <summary>
/// TableExtension PurchaseReceiptExt (ID 50129) extends Record Purchase Header.
/// </summary>
tableextension 50129 PurchaseReceiptExt extends "Purch. Rcpt. Header"
{
    fields
    {
        field(50122; "Service Code R"; Code[20])
        {
            Caption = 'Service Code';
            DataClassification = ToBeClassified;
            TableRelation = "Outsource Service".Code;
        }
        field(50115; "Service Description R"; Text[50])
        {
            Caption = 'Service Description';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup("Outsource Service".Description where(Code = field("Service Code R")));
        }
        field(50116; "Service Type R"; Enum "TypeEnumList")
        {
            Caption = 'Service Type';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup("Outsource Service".Type where(Code = field("Service Code R")));
        }
        field(50117; "Service Unit of Measure R"; Code[50])
        {
            Caption = 'Service Unit of Measure';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup("Outsource Service"."Unit of Measure" where(Code = field("Service Code R")));
        }
        field(50118; "Service Quantity R"; Decimal)
        {
            Caption = 'Service Quantity';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup("Outsource Service".Quantity where("Code" = field("Service Code R")));
        }
    }
}