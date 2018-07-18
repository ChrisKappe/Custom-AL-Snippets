page 50102 "AppName Activities"
{
    Caption  = 'Activities';
    PageType = CardPart;
    RefreshOnActivate = true;
    SourceTable = "AppName Activities Cue";

    layout
    {
        area(Content)
        {
            cuegroup("Highlited Activity")
            {
                CuegroupLayout = Wide;
                field("Highlighted field";"Highlighted field")
                {
                    ApplicationArea = Basic, Suite;
                    //DrillDownPageId = SomePage;
                    ToolTip = 'Some tooltip';
                }
            }
            cuegroup("Normal Activity")
            {
                field("Normal field";"Normal field")
                {
                    ApplicationArea = Basic, Suite;
                    //DrillDownPageId = SomePage;
                    ToolTip = 'Some tooltip';
                }
   
            }
        }
    }

    trigger OnOpenPage()
    begin
        Reset();
        If not Get() then begin
            Init();
            Insert();
        end;

    end;

    trigger OnAfterGetRecord()
    begin
        CalculateCueFieldValues();
    end;

    local procedure CalculateCueFieldValues()
    begin
        if FIELDACTIVE("Normal field") then
            "Normal field" := 2 + 1 //add some calculation here;
    end;

}