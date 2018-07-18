page 50108 "AppName Role Center"
{
    PageType = RoleCenter;
    Caption = 'AppName';

    layout
    {
        area(RoleCenter)
        {
            part(Headline; "Headline RC AppName")
            {
            }
            part(Activities; "AppName Activities")
            {
            }
            part("Help And Chart Wrapper"; "Help And Chart Wrapper")
            {
            }
            part("Report Inbox Part"; "Report Inbox Part")
            {
            }
            part("Power BI Report Spinner Part"; "Power BI Report Spinner Part")
            {
            }
        }
    }

    actions
    {
        area(Creation)
        {
            action("AppName Document")
            {
                RunPageMode = Create;
                Caption = 'AppName Document';
                ToolTip = 'Add some tooltip here';
                Image = New;
                RunObject = page "AppName Document";
            }
        }
        area(Processing)
        {
            group(New)
            {
                action("AppName Master Data")
                {
                    RunPageMode = Create;
                    Caption = 'AppName Master Data';
                    ToolTip = 'Register new master data';
                    RunObject = page "AppName Master Data";
                    Image = DataEntry;
                }
            }
            group("AppName Some Processing Group")
            {
                action("AppName Some Process")
                {
                    Caption = 'AppName Some Process';
                    ToolTip = 'Some process description';
                    Image = Process;
                    RunObject = Codeunit "AppName Some Process";
                }
            }
            group("AppName Reports")
            {
                action("AppName Some Report")
                {
                    Caption = 'AppName Some Report';
                    ToolTip = 'Some report description';
                    Image = Report;
                    RunObject = report "AppName Some Report";
                }
            }
        }
        area(Reporting)
        {
            action("AppName Some Report In Report Area")
            {
                Caption = 'AppName Some Report';
                ToolTip = 'Some report description';
                Image = Report;
                RunObject = report "AppName Some Report";
                Promoted = true;
                PromotedCategory = Report;
                PromotedIsBig = true;
            }

        }
        area(Embedding)
        {
            action("AppName Master Data List")
            {
                RunObject = page "AppName Master Data List";
            }

        }
        area(Sections)
        {
            group(SetupAndExtensions)
            {
                Caption = 'Setup & Extensions';
                ToolTip = 'Overview and change system and application settings, and manage extensions and services';
                Image = Setup;

                action("AppName Setup")
                {
                    ToolTip = 'Setup AppName';
                    RunObject = Page "AppName Setup";
                    ApplicationArea = Basic, Suite;

                }

                action("Assisted Setup")
                {
                    ToolTip = 'Set up core functionality such as sales tax, sending documents as email, and approval workflow by running through a few pages that guide you through the information.';
                    RunObject = Page "Assisted Setup";
                    ApplicationArea = Basic, Suite;
                }
                action("Manual Setup")
                {
                    ToolTip = 'Define your company policies for business departments and for general activities by filling setup windows manually.';
                    RunObject = Page "Business Setup";
                    ApplicationArea = Basic, Suite;
                }
                action("Service Connections")
                {
                    ToolTip = 'Enable and configure external services, such as exchange rate updates, Microsoft Social Engagement, and electronic bank integration.';
                    RunObject = Page "Service Connections";
                    ApplicationArea = Basic, Suite;
                }
                action("Extensions")
                {
                    ToolTip = 'Install Extensions for greater functionality of the system.';
                    RunObject = Page "Extension Management";
                    ApplicationArea = Basic, Suite;
                }

            }
        }
    }

}