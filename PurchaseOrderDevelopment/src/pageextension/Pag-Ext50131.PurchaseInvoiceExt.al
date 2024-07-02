/// <summary>
/// PageExtension PurchaseInvoiceExt (ID 50131) extends Record Posted Purchase Invoice.
/// </summary>
pageextension 50131 PurchaseInvoiceExt extends "Posted Purchase Invoice"
{
    layout
    {
        addlast(content)
        {
            group(Service)
            {
                field("Service Code"; Rec."Service Code")
                {
                    ApplicationArea = All;
                }
                field("Service Type"; Rec."Service Type")
                {
                    ApplicationArea = All;
                }
                field("Service Description"; Rec."Service Description")
                {
                    ApplicationArea = All;
                }
                field("Service Unit of Measure"; Rec."Service Unit of Measure")
                {
                    ApplicationArea = All;
                }

            }
        }
    }


    trigger OnOpenPage()
    begin

    end;

    trigger OnAfterGetRecord()
    var

    begin


    end;
}