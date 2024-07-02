/// <summary>
/// PageExtension Sale Shipment Ext (ID 50120) extends Record Posted Sales Shipment.
/// </summary>
pageextension 50121 "Sale Shipment Ext" extends "Posted Sales Shipment"
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
        // CurrPage.Update();
    end;

    trigger OnAfterGetRecord()
    begin
        // CurrPage.Update();

    end;

}
