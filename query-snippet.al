query 50102 "First Query"
{
    QueryType = Normal;


    elements
    {
        dataitem(DataItemName; SourceTableName)
        {
            column(ColumnName; SourceFieldName)
            {

            }
            filter(FilterName; SourceFieldName)
            {

            }
        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}