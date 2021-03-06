; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Copy Path"
#define MyAppVersion "1.0"
#define MyAppPublisher "Luciano Sother"
#define MyAppURL "http://sother.github.com/CopyPath"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{053EA391-A9F8-47AE-8511-C0152E1F0BF2}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableDirPage=yes
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
OutputBaseFilename=CopyPathSetup
Compression=lzma
SolidCompression=yes
ShowLanguageDialog=no
DisableReadyPage=yes
OutputDir=..\..\release

[Code]
procedure CurPageChanged(CurPageID: Integer);
begin
  if CurPageID = wpWelcome then WizardForm.NextButton.Caption := SetupMessage(msgButtonInstall);
end;

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Files]
Source: "..\CopyPath\bin\Release\CopyPath.exe"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[CustomMessages]
CopyFilePath=Copy File Path
brazilianportuguese.CopyFilePath=Copiar Caminho do Arquivo
CopyFileName=Copy File Name
brazilianportuguese.CopyFileName=Copiar Nome do Arquivo
CopyFolderPath=Copy Folder Path
brazilianportuguese.CopyFolderPath=Copiar Caminho da Pasta
CopyFolderName=Copy Folder Name
brazilianportuguese.CopyFolderName=Copiar Nome da Pasta

[Registry]
Root: HKCR; Subkey: "*\Shell\{cm:CopyFilePath}"; Flags: uninsdeletekeyifempty
Root: HKCR; Subkey: "*\Shell\{cm:CopyFilePath}\Command"; Flags: uninsdeletekey; ValueType: string; ValueData: "{app}\CopyPath.exe ""%1"""
Root: HKCR; Subkey: "*\Shell\{cm:CopyFileName}"; Flags: uninsdeletekeyifempty
Root: HKCR; Subkey: "*\Shell\{cm:CopyFileName}\Command"; Flags: uninsdeletekey; ValueType: string; ValueData: "{app}\CopyPath.exe ""%1"" -n"
Root: HKCR; Subkey: "Directory\Shell\{cm:CopyFolderPath}"; Flags: uninsdeletekeyifempty
Root: HKCR; Subkey: "Directory\Shell\{cm:CopyFolderPath}\Command"; Flags: uninsdeletekey; ValueType: string; ValueData: "{app}\CopyPath.exe ""%1"""
Root: HKCR; Subkey: "Directory\Shell\{cm:CopyFolderName}"; Flags: uninsdeletekeyifempty
Root: HKCR; Subkey: "Directory\Shell\{cm:CopyFolderName}\Command"; Flags: uninsdeletekey; ValueType: string; ValueData: "{app}\CopyPath.exe ""%1"" -n"
