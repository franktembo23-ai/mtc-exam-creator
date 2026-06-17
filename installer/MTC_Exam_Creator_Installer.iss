; MTC EXAM CREATOR - Inno Setup Script
; Generated for Mountain Tuition Centre

#define MyAppName "MTC EXAM CREATOR"
#define MyAppVersion "2.0"
#define MyAppPublisher "Mountain Tuition Centre"
#define MyAppURL "https://github.com/yourusername/mtc-exam-creator"
#define MyAppExeName "MTC Exam Creator.exe"

[Setup]
AppId={{A1B2C3D4-E5F6-4A7B-8C9D-0E1F2A3B4C5D}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\MTC Exam Creator
DefaultGroupName=MTC EXAM CREATOR
DisableProgramGroupPage=yes
LicenseFile=
OutputDir=..\Output
OutputBaseFilename=MTC_EXAM_CREATOR_Setup
SetupIconFile=mtc_logo.ico
UninstallDisplayIcon={app}\mtc_logo.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
PrivilegesRequired=lowest
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\index.html"; DestDir: "{app}"; DestName: "index.html"; Flags: ignoreversion
Source: "..\assets\mtc_logo.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\assets\mtc_logo.png"; DestDir: "{app}"; Flags: ignoreversion

; Create a launcher that opens in Edge App mode (looks native)
Source: "launcher.bat"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\launcher.bat"; IconFilename: "{app}\mtc_logo.ico"; WorkingDir: "{app}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\launcher.bat"; IconFilename: "{app}\mtc_logo.ico"; Tasks: desktopicon; WorkingDir: "{app}"

[Run]
Filename: "{app}\launcher.bat"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: filesandordirs; Name: "{app}"
