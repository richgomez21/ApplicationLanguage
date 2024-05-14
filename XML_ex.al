xmlport 50100 MyXmlport
{
    Caption = 'Export Contacts to XML';
    Direction = Export;
    Format = Xml;
    UseRequestPage = false;
    DefaultFieldsValidation = true;

    schema
    {
        textelement(Contacts)
        {
            XmlName = 'Contacts';

            tableelement(Contact; Contact)
            {
                RequestFilterFields = "No.";
                XmlName = 'Contact';

                fieldattribute(No; Contact."No.")
                {
                }
                fieldattribute(ExternalID; Contact."External ID")
                {
                }
                fieldelement(Name; Contact.Name)
                {
                }
                fieldelement("E-Mail"; Contact."E-Mail")
                {
                }
                fieldelement(HomePage; Contact."Home Page")
                {
                }
                textelement(Company)
                {
                    XmlName = 'Company';

                    fieldattribute(CompanyNo; Contact."Company No.")
                    {
                    }
                    fieldelement(CompanyName; Contact."Company Name")
                    {
                    }
                }
            }
        }
    }

    requestpage
    {
        layout
        {
            area(content)
            {
            }
        }

        actions
        {
            area(processing)
            {
            }
        }
    }
}