page 50120 CustomerCardPartInfo
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Customer;

    layout
    {
        area(Content)
        {
            usercontrol(CustInfoCtrl; CustInfoCtrl)
            {

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAfterGetCurrentRecord()
                begin
                    GetCustomerInfo();
                end;
            }
        }
    }

    procedure GetCustomerInfo()
    var
        custInfo: JsonObject;
    begin
        custInfo.Add('name', Rec.Name);
        custInfo.Add('email', Rec."E-Mail");
        custInfo.Add('phone', Rec."Phone No.");
        CurrPage.CustInfoCtrl.GetCustomerInfo(custInfo);
    end;
}