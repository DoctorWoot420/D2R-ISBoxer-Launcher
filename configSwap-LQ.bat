@ECHO OFF
REM You will need to create/store sample config files.  Define the folder you stored them here, and the file names.
set "sourceConfigFolder=%cd%\d2rConfig"
set "sourceConfigFileNameHq=Settings.hq.json"
set "sourceConfigFileNameLq=Settings.lq.json"

REM This path probably never changes
set "targetConfigPath=%userProfile%\Saved Games\Diablo II Resurrected\Settings.json"

REM Copy and overwrite the target config file
set "sourceConfigFullPath=%sourceConfigFolder%\%sourceConfigFileNameLq%"
xcopy "%sourceConfigFullPath%" "%targetConfigPath%" /y


