pageextension 123456701 CSD_ResourceListExt extends "Resource List"
// CSD1.00 - 2018-01-01 - E.K.
{
    layout
    {
        modify(Type)
        {
            Visible = ShowType;
        }
        addafter(Type)
        {
            field("Resource Type"; "CSD Resource Type")
            {
            }
            field("Maximum Participants"; "CSD Maximum Participants")
            {
                Visible = ShowMaxField;
            }
        }
    }
    
    trigger OnOpenPage();
    begin
        rec.FilterGroup(3);
        ShowType := (GetFilter(Type)='');
        ShowMaxField := (GetFilter(Type)=format(Type::machine));
        rec.FilterGroup(0);
    end;

    var
        [InDataSet]
        ShowType : Boolean;
        [InDataSet]
        ShowMaxField : Boolean; 
}
