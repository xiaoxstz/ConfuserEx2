@echo off

dotnet msbuild ..\Confuser2.sln /p:Configuration=Release "/p:Platform=Any CPU"

IF %ERRORLEVEL% NEQ 0 GOTO err

7z a ConfuserEx_bin.zip -tzip @files.lst
EXIT /B 0

:err
PAUSE
EXIT /B 1