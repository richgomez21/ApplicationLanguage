/// <summary>
/// Table Outsource Service (ID 50108).
/// </summary>
table 50108 "Outsource Service"
{
    Caption = 'Outsource Service';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; "Type"; Enum "TypeEnumList")
        {
            Caption = 'Type';
        }
        field(4; "Unit of Measure"; Code[10])
        {
            Caption = 'Unit of Measure';
            TableRelation = "Unit of Measure";
        }
        field(5; Quantity; Decimal)
        {
            Caption = 'Quantity';
            MinValue = 0;
        }
        field(6; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;

        }
    }
}
