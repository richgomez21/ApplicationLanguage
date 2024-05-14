pageextension 50110 ItemCardPictureExtension extends ItemCard
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
        addlast(Functions)
        {
            action(ImportItemPicture)
            {
                Caption = 'Import Item Picture';
                ApplicationArea = All;
                Image = Import;
                ToolTip = 'Import Item Picture'

                trigger onAction()
                var
                    ImageManagement: Codeunit ImageManagement;
                begin
                    ImageManagement.ImportItemPicture(Rec);
                end;

            }
        }
    }

    // var
    //     myInt: Integer;
}