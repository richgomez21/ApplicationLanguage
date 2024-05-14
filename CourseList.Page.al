page 50101 "CRONUS Course"
{
    Caption = 'Course List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CRONUS Course";
    Editable = false;
    CardPageId = "CRONUS Course Card";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Code"; Code)
                {
                    ApplicationArea = All
                }
                field("Name"; Name)
                {
                    ApplicationArea = All
                }
                field("Description"; Description)
                {
                    ApplicationArea = All
                }

                field("Price"; Price)
                {
                    ApplicationArea = All
                }

                field("Instructor Name"; "Instructor Name")
                {
                    ApplicationArea = All
                }



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

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}