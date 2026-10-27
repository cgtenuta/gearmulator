; Inno Setup script: installs the OsTIrus VST3 (HardwareTI skin). The Virus TI ROM is NOT included; you must supply your own.
[Setup]
AppName=OsTIrus HardwareTI
AppVersion=1.0
DefaultDirName={commoncf64}\VST3
DisableDirPage=yes
DisableProgramGroupPage=yes
OutputBaseFilename=OsTIrus_HardwareTI_Setup
OutputDir=Output
ArchitecturesInstallIn64BitMode=x64compatible
ArchitecturesAllowed=x64compatible
PrivilegesRequired=admin
Compression=lzma2
SolidCompression=yes
LicenseFile=..\LICENSE.md

[Files]
Source: "..\out\OsTIrus.vst3\*"; DestDir: "{commoncf64}\VST3\OsTIrus.vst3"; Flags: ignoreversion recursesubdirs createallsubdirs

[Messages]
FinishedLabel=OsTIrus was installed to the VST3 folder. Place your own Virus TI ROM file as described in the project README; no ROM is included.
