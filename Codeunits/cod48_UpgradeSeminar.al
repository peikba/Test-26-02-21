codeunit 50148 "CSD Upgrade Seminar"
{
    Subtype = Upgrade;

    trigger OnCheckPreconditionsPerCompany()
    var
        Info: ModuleInfo;
    begin
        NavApp.GetCurrentModuleInfo(Info);
        case format(Info.AppVersion) of
            '14.0.0.0':
                begin
                    UpgradeFromBC14;
                    UpgradeFromBC15;
                    UpgradeFromBC16;
                end;
            '15.0.0.0':
                begin
                    UpgradeFromBC15;
                    UpgradeFromBC16;
                end;
            '16.0.0.0':
                begin
                    UpgradeFromBC16;
                end;
            '17.0.0.0':
                begin

                end;

        end;

    end;

    trigger OnUpgradePerCompany()
    var
        myInt: Integer;
    begin

    end;


    trigger OnValidateUpgradePerCompany()
    var
        myInt: Integer;
    begin

    end;

    local procedure UpgradeFromBC14()
    var
        myInt: Integer;
    begin

    end;

    local procedure UpgradeFromBC15()
    var
        myInt: Integer;
    begin

    end;

    local procedure UpgradeFromBC16()
    var
        myInt: Integer;
    begin

    end;
}