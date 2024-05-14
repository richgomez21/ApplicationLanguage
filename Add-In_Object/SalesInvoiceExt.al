pageextension 50110 SalesInvoice extends SalesInvoice
{
    layout
    {
        // Add changes to page layout here
        addfirst(factboxes)
        {
            part(CustInfoCardPart; CustInfoCardPart)
            {
                SubPageLink = "No." = field("Bill-to Customer No.");
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}