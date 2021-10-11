@ECHO OFF
REM Change if you installed inner space to a non default path
set "innerSpacePath=C:\Program Files (x86)\InnerSpace\InnerSpace.exe"

REM You will need to create/store sample config files.  Define the folder you stored them here, and the file names.
set "sourceConfigFolder=%cd%\d2rConfig"
set "sourceConfigFileNameHq=Settings.hq.json"
set "sourceConfigFileNameLq=Settings.lq.json"

REM This path probably never changes
set "targetConfigPath=%userProfile%\Saved Games\Diablo II Resurrected\Settings.json"

REM You must input the character set name and number exactly as configured in IS Boxer
set "characterSet=D2 Main Bo"
set "slotNumber=2"

REM Copy and overwrite the target config file
set "sourceConfigFullPath=%sourceConfigFolder%\%sourceConfigFileNameLq%"
xcopy "%sourceConfigFullPath%" "%targetConfigPath%" /y

REM Now we launch Inner Space using the desired character set and slot
"%innerSpacePath%" run isboxer -launchslot "%characterSet%" %slotNumber%