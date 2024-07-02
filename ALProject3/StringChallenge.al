page 50104 MyPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'String Challenge';
    SourceTable = "StringChallenge";

    layout
    {
        area(Content)
        {
            group(StringChallenge)
            {
                field(Input; Rec.String)
                {
                    ToolTip = 'Specifies the value of the String field.',
                    Comment = '%';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(FilterString)
            {
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Rec.String := DELCHR(Rec.String, '1234567890');
                    Rec.Modify();
                end;
            }
        }
    }

    trigger OnInit()
    begin
        if Rec.IsEmpty() then
            Rec.Insert();
    end;
}
