xmlport 50103 "Customer Xml"
{
    Direction = Export;
    Format = Xml;
    Caption = 'Export Customer(s) to XML';

    schema
    {
        textelement(Customers)
        {
            tableelement(Customer; Customer)
            {
                fieldattribute(Number; Customer."No.") { }
                fieldattribute(Language; Customer."Language Code") { }
                fieldelement(Name; Customer.Name) { }
                fieldelement(Phone; Customer."Phone.No") { }
                textelement(Address)
                {
                    XmlName = 'Address';
                    fieldelement(SteetAndNr; Customer.Address) { }
                    fieldelement(Zipcode; Customer."Post Code") { }
                    fieldelement(City; Customer.City) { }

                }


            }
        }
    }

    // requestpage
    // {
    //     layout
    //     {
    //         area(content)
    //         {
    //             group(GroupName)
    //             {
    //                 field(Name; SourceExpression)
    //                 {

    //                 }
    //             }
    //         }
    //     }

    //     actions
    //     {
    //         area(processing)
    //         {
    //             action(ActionName)
    //             {

    //             }
    //         }
    //     }
    // }

    // var
    //     myInt: Integer;
}