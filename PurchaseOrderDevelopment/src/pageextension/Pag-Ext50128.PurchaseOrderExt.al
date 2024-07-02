/// <summary>
/// PageExtension Purchase Order Ext (ID 50128) extends Record Purchase Order.
/// </summary>
pageextension 50128 "Purchase Order Ext" extends "Purchase Order"
{
    layout
    {
        addlast(content)
        {
            group(Service)
            {
                field("Service Code"; Rec."Service Code R")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        CurrPage.Update();
                    end;
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

    var
        serviceTable: Record "Outsource Service";
        salesHeader: Record "Sales Header";

    trigger OnAfterGetRecord()
    var
    begin
        CurrPage.Update();
    end;

    trigger OnOpenPage()
    begin
        CurrPage.Update();
    end;
}
