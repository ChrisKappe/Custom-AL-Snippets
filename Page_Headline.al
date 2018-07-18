page 50101 "Headline RC AppName"
{
    PageType = HeadlinePart;

    layout
    {
        area(content)
        {
            group("AppName Headline")
            {
                Visible = AppNameHeadlineVisible;
                ShowCaption = false;
                Editable = false;

                field(FirstInsight; FirstInsightText)
                {
                    ApplicationArea = Basic, Suite;
                    trigger OnDrillDown();
                    var
                    begin
                        OnDrillDownFirstInsight();
                    end;

                }
                field(SecondInsight; SecondInsightText)
                {
                    ApplicationArea = Basic, Suite;
                    trigger OnDrillDown();
                    var
                    begin
                        OnDrillDownSecondInsight();
                    end;
                }

            }
        }
    }

    var
        [InDataSet]
        AppNameHeadlineVisible: Boolean;
        FirstInsightText: Text;
        SecondInsightText: Text;

    trigger OnOpenPage()
    begin
        HandleVisibility();

        HandleFirstInsight();
        HandleSecondInsight();

        OnSetVisibility(AppNameHeadlineVisible);
    end;

    local procedure HandleVisibility()
    var
    begin
        AppNameHeadlineVisible := true;
    end;

    local procedure HandleFirstInsight();
    var
        HeadlineManagement: Codeunit "Headline Management";
        PayloadText: Text;
        QualifierText: Text;
    begin
        PayloadText := HeadlineManagement.Emphasize('Some text to highlight') + ' Some other text';
        QualifierText := 'Some name of the insight';
        HeadlineManagement.GetHeadlineText(QualifierText, PayloadText, FirstInsightText);

    end;

    local procedure HandleSecondInsight();
    var
        HeadlineManagement: Codeunit "Headline Management";
        PayloadText: Text;
        QualifierText: Text;
    begin
        PayloadText := HeadlineManagement.Emphasize('Some text to highlight') + ' Some other text';
        QualifierText := 'Some name of the insight';
        HeadlineManagement.GetHeadlineText(QualifierText, PayloadText, SecondInsightText);

    end;

    local procedure OnDrillDownFirstInsight();
    var
    begin

    end;

    local procedure OnDrillDownSecondInsight();
    var
    begin

    end;



    [IntegrationEvent(false, false)]
    local procedure OnSetVisibility(var AppNameHeadlineVisible: Boolean)
    begin
    end;
}