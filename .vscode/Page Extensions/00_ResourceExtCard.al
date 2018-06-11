pageextension 123456700 CSD_ResourceCardExt extends "Resource Card"
{
     // CSD1.00 - 2018-02-01 - E. K.
    layout
    {
        addlast(General)
        {
            field("Resource Type"; "CSD Resource Type")
            {
            }
            field("Quantity Per Day"; "CSD Quantity Per Day")
            {
            }
        }

        addafter("Personal Data")
        {

            group("Room")
            {
                Visible = ShowMaxField;
                field("Maximum Participants"; "CSD Maximum Participants")
                {

                }
            }
        }
    }

    trigger OnOpenPage();
    begin
        ShowMaxField := (Type = Type::Machine);
        CurrPage.Update(false);
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
}