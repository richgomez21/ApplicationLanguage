/// <summary>
/// PageExtension PurchaseReceiptPage (ID 50130) extends Record Posted Purchase Receipt.
/// </summary>
pageextension 50130 PurchaseReceiptPage extends "Posted Purchase Receipt"
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
                    // trigger OnValidate()
                    // begin
                    //     CurrPage.Update();
                    // end;
                    // TableRelation = "Outsource Service".Code;
                }
                field("Service Type"; Rec."Service Type R")
                {
                    ApplicationArea = All;
                }
                field("Service Description"; Rec."Service Description R")
                {
                    ApplicationArea = All;
                }
                field("Service Unit of Measure"; Rec."Service Unit of Measure R")
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
