/// <summary>
/// TableExtension SaleHeaderExtension (ID 50114) extends Record Sales Header.
/// </summary>
tableextension 50114 SaleLineExtension extends "Sales Line"
{
    fields
    {
        field(50110; "Service Code"; Code[20])
        {
            Caption = 'Service Code';
            DataClassification = ToBeClassified;
        }
    }
}
