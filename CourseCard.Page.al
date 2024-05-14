page 50100 "CRONUS Course Card"
{
    SourceTable = "CRONUS Course";
    PageType = Card;
    UsageCategory = None;
    Caption = 'Course Card';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("Code"; Code)
                {
                    ApplicationArea = All;

                }
                field("Name"; Name)
                {
                    ApplicationArea = All;

                }
                field("Description"; Description)
                {
                    ApplicationArea = All;

                }

                group(Details)
                {
                    Caption = 'Details';

                    field("Duration"; Duration)
                    {
                        ApplicationArea = All;
                    }

                    field("Price"; Price)
                    {
                        ApplicationArea = All;
                    }

                    field("Type"; Type)
                    {
                        ApplicationArea = All;
                    }
                    field("Active"; Active)
                    {
                        ApplicationArea = All;
                    }
                    field("Instructor Code"; "Instructor Code")
                    {
                        ApplicationArea = All;
                    }
                    field("Instructor Name"; "Instructor Name")
                    {
                        ApplicationArea = All;
                    }
                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Resource Card")
            {
                Caption = 'Resource';
                ToolTip = 'Open the Resource Card';
                RunObject = Page "Resource Card";
                RunPageLink = No."Instructor Code";
                Image = Relationship;
                Promoted = True;
                PromotedCategory = "Process";
                ApplicationArea = All;


            }
        }
    }

}