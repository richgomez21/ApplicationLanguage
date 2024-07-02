/// <summary>
/// PageExtension Sales Invoice Page Ext (ID 50125) extends Record Posted Sales Invoice.
/// </summary>
pageextension 50125 "Sales Invoice Page Ext" extends "Posted Sales Invoice"
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
