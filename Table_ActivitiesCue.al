table 50100 "AppName Activities Cue"
{
    fields
    {
        field(1; "Primary Key"; Code[10])
        {

        }
        field(10; "Highlighted field"; Integer)
        {
            Caption = 'MyField';
            FieldClass = FlowField;
            CalcFormula = Count ("Sales Header" WHERE ("Document Type" = FILTER (Invoice)));
        }
        field(11; "Normal field"; Decimal)
        {
            Caption = 'MyField';
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

}