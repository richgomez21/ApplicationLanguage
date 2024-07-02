table 50115 SocialMedia
{
    Caption = 'SocialMedia';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; FaceBook; Text[50])
        {
            Caption = 'FaceBook';
        }
        field(2; Instagram; Text[50])
        {
            Caption = 'Instagram';
        }
        field(3; Twitter; Text[50])
        {
            Caption = 'Twitter';
        }
        field(4; LinkedIn; Text[50])
        {
            Caption = 'LinkedIn';
        }
    }
    keys
    {
        key(PK; FaceBook)
        {
            Clustered = true;
        }
    }
}
