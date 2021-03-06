; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#include "MO2-Config.iss"

#define use_vc2017

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{68ADD8CF-0653-48BD-8B14-26E43B93933C}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;We should only allow installing on 64bit systems
ArchitecturesAllowed=x64
 ArchitecturesInstallIn64BitMode=x64
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={sd}\Modding\MO2
DirExistsWarning=no
DefaultGroupName={#MyAppName}
PrivilegesRequired=admin
AllowNoIcons=yes
LicenseFile=..\..\..\..\install\bin\licenses\GPL-v3.0.txt
OutputDir={#MO2Folder}
OutputBaseFilename=Mod.Organizer-{#MyAppVersion}
SetupIconFile=.\Images\mo_icon.ico
Compression=lzma
SolidCompression=yes
Uninstallable=yes
CreateUninstallRegKey=no
UninstallDisplayIcon={app}\ModOrganizer.exe
UninstallDisplayName=Mod Organizer 2

; downloading and installing dependencies will only work if the memo/ready page is enabled (default and current behaviour)
DisableReadyPage=no
DisableReadyMemo=no

[CustomMessages]
; shared code for installing the products
#include "Scripts\innodependencyinstaller\products.iss"

; helper functions
#include "Scripts\innodependencyinstaller\products\stringversion.iss"
#include "Scripts\innodependencyinstaller\products\winversion.iss"
#include "Scripts\innodependencyinstaller\products\fileversion.iss"
#include "Scripts\innodependencyinstaller\products\dotnetfxversion.iss"

#ifdef use_vc2017
#include "Scripts\innodependencyinstaller\products\msiproduct.iss"
#include "Scripts\innodependencyinstaller\products\vcredist2017.iss"
#endif

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Flags: nowait postinstall skipifsilent; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"

[Types]
Name: "Full"; Description: "Recommened Install"
Name: "Custom"; Description: "Expert Install"; Flags: iscustom

[Components]
Name: "core"; Description: "Core Application"; Types: Custom Full; Flags: fixed
Name: "QTDLL"; Description: "Qt DLL's"; Types: Full Custom; Flags: fixed
Name: "Plugins"; Description: "MO2 Plugins"; Types: Full Custom
Name: "Plugins\Python"; Description: "Python Support"; Types: Custom Full
Name: "Plugins\Manual"; Description: "Manual Installer"; Types: Custom Full
Name: "Plugins\Quick"; Description: "Quick Installer"; Types: Custom Full
Name: "Plugins\Bain"; Description: "BAIN Installer"; Types: Custom Full
Name: "Plugins\FOMOD"; Description: "FOMOD Installer"; Types: Custom Full
Name: "Plugins\NCC"; Description: "NCC Installer"; Types: Custom Full
Name: "Plugins\LegacyINI"; Description: "Legacy ini editor"; Types: Custom Full
Name: "Plugins\FNISCheck"; Description: "FNIS Checker"; Types: Custom Full
Name: "Plugins\FNISPatches"; Description: "FNIS Patches"; Types: Custom Full
Name: "Plugins\FNISTool"; Description: "FNIS Tool"; Types: Custom Full
Name: "Plugins\Configurator"; Description: "Configurator"; Types: Custom Full
Name: "Plugins\File"; Description: "File Preview"; Types: Custom Full
Name: "Plugins\Oblivion"; Description: "Oblivion Support"; Types: Custom Full
Name: "Plugins\Morrowind"; Description: "Morrowind Support"; Types: Custom Full
Name: "Plugins\Fallout3"; Description: "Fallout 3 Support"; Types: Custom Full
Name: "Plugins\TTW"; Description: "TTW Support"; Types: Custom Full
Name: "Plugins\Fallout4"; Description: "Fallout 4 Support"; Types: Custom Full
Name: "Plugins\Fallout4VR"; Description: "Fallout 4 VR Support"; Types: Custom Full
Name: "Plugins\NV"; Description: "New Vegas Support"; Types: Custom Full
Name: "Plugins\Skyrim"; Description: "Skyrim Support"; Types: Custom Full
Name: "Plugins\SkyrimVR"; Description: "SkyrimVR Support"; Types: Custom Full
Name: "Plugins\SkyrimSE"; Description: "Skyrimse Support"; Types: Custom Full
Name: "Translations"; Description: "Translations"; Types: Custom Full
Name: "Tutorials"; Description: "Tutorials"; Types: Custom Full
Name: "Stylesheets"; Description: "Stylesheets"; Types: Custom Full
Name: "Nexus"; Description: "Handle Nexus Links"

[Files]
;Core Files
Source: "..\..\..\..\install\bin\boost_python37-vc141-mt-x64-1_68.dll"; DestDir: "{app}"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\helper.exe"; DestDir: "{app}"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\libeay32.dll"; DestDir: "{app}"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\ModOrganizer.exe"; DestDir: "{app}"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\nxmhandler.exe"; DestDir: "{app}"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\QtWebEngineProcess.exe"; DestDir: "{app}"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\ssleay32.dll"; DestDir: "{app}"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\uibase.dll"; DestDir: "{app}"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\usvfs_proxy_x64.exe"; DestDir: "{app}"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\usvfs_proxy_x86.exe"; DestDir: "{app}"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\usvfs_x64.dll"; DestDir: "{app}"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\usvfs_x86.dll"; DestDir: "{app}"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\loot\lootcli.exe"; DestDir: "{app}\loot"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\loot\loot_api.dll"; DestDir: "{app}\loot"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\plugins\bsa_extractor.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\plugins\diagnose_basic.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\plugins\inibakery.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\plugins\installer_bundle.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\licenses\*"; DestDir: "{app}\licenses"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: core
Source: "..\..\..\..\install\bin\QtQuick.2\*"; DestDir: "{app}\QtQuick.2"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: core
Source: "..\..\..\..\install\bin\platforms\*"; DestDir: "{app}\platforms"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: core
Source: "..\..\..\..\install\bin\dlls\7z.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\dlls\archive.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\dlls\libeay32.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\dlls\liblz4.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\dlls\ssleay32.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: core
Source: "..\..\..\..\install\bin\resources\*"; DestDir: "{app}\resources"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: core
Source: "..\..\..\..\install\bin\styles\*"; DestDir: "{app}\styles"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: core
;QT DLLS
Source: "..\..\..\..\install\bin\dlls\imageformats\*"; DestDir: "{app}\dlls\imageformats"; Flags: ignoreversion createallsubdirs recursesubdirs
Source: "..\..\..\..\install\bin\dlls\Qt5Core.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: QTDLL
Source: "..\..\..\..\install\bin\dlls\Qt5Gui.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: QTDLL
Source: "..\..\..\..\install\bin\dlls\Qt5Network.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: QTDLL
Source: "..\..\..\..\install\bin\dlls\Qt5Positioning.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: QTDLL
Source: "..\..\..\..\install\bin\dlls\Qt5PrintSupport.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: QTDLL
Source: "..\..\..\..\install\bin\dlls\Qt5Qml.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: QTDLL
Source: "..\..\..\..\install\bin\dlls\Qt5Quick.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: QTDLL
Source: "..\..\..\..\install\bin\dlls\Qt5QuickWidgets.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: QTDLL
Source: "..\..\..\..\install\bin\dlls\Qt5SerialPort.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: QTDLL
Source: "..\..\..\..\install\bin\dlls\Qt5Svg.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: QTDLL
Source: "..\..\..\..\install\bin\dlls\Qt5WebChannel.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: QTDLL
Source: "..\..\..\..\install\bin\dlls\Qt5WebEngineCore.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: QTDLL
Source: "..\..\..\..\install\bin\dlls\Qt5WebEngineWidgets.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: QTDLL
Source: "..\..\..\..\install\bin\dlls\Qt5Widgets.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: QTDLL
Source: "..\..\..\..\install\bin\dlls\Qt5WinExtras.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: QTDLL
Source: "..\..\..\..\install\bin\dlls\d3dcompiler_47.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: QTDLL
Source: "..\..\..\..\install\bin\dlls\dlls.manifest"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: QTDLL
Source: "..\..\..\..\install\bin\dlls\libEGL.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: QTDLL
Source: "..\..\..\..\install\bin\dlls\libGLESV2.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: QTDLL
Source: "..\..\..\..\install\bin\dlls\opengl32sw.dll"; DestDir: "{app}\dlls"; Flags: ignoreversion; Components: QTDLL
;Start Plugin Groups
;Manual Installer
Source: "..\..\..\..\install\bin\plugins\installer_manual.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\Manual
;Quick Installer
Source: "..\..\..\..\install\bin\plugins\installer_quick.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\Quick
;BAIN Installer
Source: "..\..\..\..\install\bin\plugins\installer_bain.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\Bain
;FOMOD Installer
Source: "..\..\..\..\install\bin\plugins\installer_fomod.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\FOMOD
;NCC Installer
Source: "..\..\..\..\install\bin\NCC\*"; DestDir: "{app}\NCC"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: Plugins\NCC
Source: "..\..\..\..\install\bin\plugins\installer_ncc.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\NCC
;Python Support
Source: "..\..\..\..\install\bin\python37.dll"; DestDir: "{app}"; Flags: ignoreversion; Components: Plugins\Python
Source: "..\..\..\..\install\bin\pythoncore\*"; DestDir: "{app}\pythoncore"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: Plugins\Python
Source: "..\..\..\..\install\bin\plugins\plugin_python.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\Python
Source: "..\..\..\..\install\bin\plugins\data\*"; DestDir: "{app}\plugins\data"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: Plugins\Python
;Legacy ini editor
Source: "..\..\..\..\install\bin\plugins\inieditor.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\LegacyINI
;FNIS Checker
Source: "..\..\..\..\install\bin\plugins\check_fnis.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\FNISCheck
;Configurator
Source: "..\..\..\..\install\bin\plugins\pyCfg.py"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\Configurator
;File Preview
Source: "..\..\..\..\install\bin\plugins\preview_base.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\File
;Oblivion Support
Source: "..\..\..\..\install\bin\plugins\game_oblivion.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\Oblivion
;Morrowind Support
Source: "..\..\..\..\install\bin\plugins\game_morrowind.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\Morrowind
;Fallout 3 Support
Source: "..\..\..\..\install\bin\plugins\game_fallout3.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\Fallout3
;TTW Support
Source: "..\..\..\..\install\bin\plugins\game_ttw.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\TTW
;Fallout 4 Support
Source: "..\..\..\..\install\bin\plugins\game_fallout4.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\Fallout4
;Fallout 4 VR Support
Source: "..\..\..\..\install\bin\plugins\game_fallout4vr.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\Fallout4VR
;New Vegas Support
Source: "..\..\..\..\install\bin\plugins\game_falloutNV.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\NV
;Skyrim Support
Source: "..\..\..\..\install\bin\plugins\game_skyrim.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\Skyrim
;SkyrimVR Support
Source: "..\..\..\..\install\bin\plugins\game_skyrimvr.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\SkyrimVR
;Skyrimse Support
Source: "..\..\..\..\install\bin\plugins\game_skyrimse.dll"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\SkyrimSE
;FNIS Patches
Source: "..\..\..\..\install\bin\plugins\FNISPatches.py"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\FNISPatches
;FNIS Tool
Source: "..\..\..\..\install\bin\plugins\FNISTool.py"; DestDir: "{app}\plugins"; Flags: ignoreversion; Components: Plugins\FNISTool
;End Plugin Groups
;Translations
Source: "..\..\..\..\install\bin\translations\*"; DestDir: "{app}\translations"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: Translations
;Tutorials
Source: "..\..\..\..\install\bin\tutorials\*"; DestDir: "{app}\tutorials"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: Tutorials
;Stylesheets
Source: "..\..\..\..\install\bin\stylesheets\*"; DestDir: "{app}\stylesheets"; Flags: ignoreversion createallsubdirs recursesubdirs; Components: Stylesheets

[Registry]
Root: "HKCU"; Subkey: "Software\Classes\nxm"; ValueType: string; ValueData: "URL:NXM Protocol"; Flags: createvalueifdoesntexist; Components: Nexus; 
Root: "HKCU"; Subkey: "Software\Classes\nxm"; ValueType: string; ValueName: "URL Protocol"; Flags: createvalueifdoesntexist; Components: Nexus; 
Root: "HKCU"; Subkey: "Software\Classes\nxm\shell\open\command"; ValueType: string; ValueData: """{app}\nxmhandler.exe"" ""%1"""; Flags: createvalueifdoesntexist deletevalue uninsclearvalue; Components: Nexus; AfterInstall: WriteNexusHandlerINI('{localappdata}\ModOrganizer\nxmhandler.ini', '{app}\{#MyAppExeName}')

[InstallDelete]
Type: filesandordirs; Name: "{app}/DLLS"
Type: filesandordirs; Name: "{app}/licenses"
Type: filesandordirs; Name: "{app}/loot"
Type: filesandordirs; Name: "{app}/NCC"
Type: filesandordirs; Name: "{app}/platforms"
Type: filesandordirs; Name: "{app}/plugins"
Type: filesandordirs; Name: "{app}/QtQuick.2"
Type: filesandordirs; Name: "{app}/resources"
Type: filesandordirs; Name: "{app}/styles"
Type: filesandordirs; Name: "{app}/stylesheets"
Type: filesandordirs; Name: "{app}/translations"
Type: filesandordirs; Name: "{app}/tutorials"
Type: filesandordirs; Name: "{app}/boost_python*.dll"
Type: filesandordirs; Name: "{app}/helper.exe"
Type: filesandordirs; Name: "{app}/libeay32.dll"
Type: filesandordirs; Name: "{app}/ModOrganizer.exe"
Type: filesandordirs; Name: "{app}/nxmhandler.exe"
Type: filesandordirs; Name: "{app}/python*"
Type: filesandordirs; Name: "{app}/QTWebEngineProcess.exe"
Type: filesandordirs; Name: "{app}/ssleay32.dll"
Type: filesandordirs; Name: "{app}/uibase.dll"
Type: filesandordirs; Name: "{app}/uninstall.exe"
Type: filesandordirs; Name: "{app}/usvfs_*"

[UninstallDelete]
Type: filesandordirs; Name: "{app}/pythoncore"
Type: filesandordirs; Name: "{app}/plugins"
Type: filesandordirs; Name: "{app}/webcache"

[Code]
const
//Define global constants
  CompIndexFNISPatches = 11;
  CompIndexFNISTool = 12; 
  CompIndexConfigurator = 13;

var
//Define global variables
  CompPageVisited: Boolean;
  DefaultCompClickCheck: TNotifyEvent;
  DefaultCompTypeChange: TNotifyEvent;

//Uncheck and set the enabled state of the Sync components based on whether the Client component is selected
procedure UpdateComponents;
begin
  with WizardForm.ComponentsList do
    begin
      if not IsComponentSelected('Plugins\Python') then
        begin
          CheckItem(CompIndexFNISPatches, coUncheck);
          CheckItem(CompIndexFNISTool, coUncheck);
          CheckItem(CompIndexConfigurator, coUncheck);
        end; 
      ItemEnabled[CompIndexConfigurator] := IsComponentSelected('Plugins\Python');
      ItemEnabled[CompIndexFNISPatches] := IsComponentSelected('Plugins\Python');
      ItemEnabled[CompIndexFNISTool] := IsComponentSelected('Plugins\Python');
      Invalidate; //required for text state to update correctly
    end;
end;

//Update the component states if the component states change and restore the original event handler procedures
procedure ComponentsClickCheck(Sender: TObject);
begin
  DefaultCompClickCheck(Sender);
  UpdateComponents;
end;

procedure ComponentsTypesComboChange(Sender: TObject);
begin
  DefaultCompTypeChange(Sender);
  UpdateComponents;
end;

procedure InitializeWizard();
begin
//Store the original Components Page OnClickCheck and Types Combo Box OnChange event procedures and assign custom procedures
  DefaultCompClickCheck := WizardForm.ComponentsList.OnClickCheck;
  WizardForm.ComponentsList.OnClickCheck := @ComponentsClickCheck;
  DefaultCompTypeChange := WizardForm.TypesCombo.OnChange;
  WizardForm.TypesCombo.OnChange := @ComponentsTypesComboChange;
end;

procedure CurPageChanged(CurPageID: Integer);
begin
//Update the Components Page if entered for the first time
  if (CurPageID = wpSelectComponents) and not CompPageVisited then
    begin
      CompPageVisited := True;
      UpdateComponents;
    end;
end;

function MyGetVersionNumbersString(const Filename: String; var Version: String): Boolean;
var
  MS, LS: Cardinal;
  Major, Minor, Rev, Build: Cardinal;
begin
  Result := GetVersionNumbers(Filename, MS, LS);

  if Result then
  begin
    Major := MS shr 16;
    Minor := MS and $FFFF;
    Rev := LS shr 16;
    Build := LS and $FFFF;
    Version := Format('%d.%d.%d', [Major, Minor, Rev]);
  end
end;

procedure WriteNexusHandlerINI(const Filename: String; const Handler: String);
var
  Written: Boolean;
  Output, FixedHandler: String;
begin
  FixedHandler := ExpandConstant(Handler);
  StringChangeEx(FixedHandler, '\', '\\', True);
  Output :=          '[handlers]'                          + #10#13;
  Output := Output + 'size=1'                              + #10#13;
  Output := Output + '1\games='                            + #10#13;
  Output := Output + '1\executable="' + FixedHandler + '"' + #10#13;
  if IsComponentSelected('Nexus') then
  begin
    Written := SaveStringToFile(ExpandConstant(Filename), Output, False);
    if not Written then
    begin
      MsgBox('Unable to write ' + ExpandConstant(Filename), mbError, MB_OK);
    end
  end
end;

#include "Scripts\innodependencyinstaller\innodependencyinstaller.pas"
