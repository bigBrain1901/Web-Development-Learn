@echo off

if not ""%1"" == ""START"" goto stop

cmd.exe /C start /B /MIN "" "E:\Web-Development-Learn\Project\PHP\apache\bin\httpd.exe"

if errorlevel 255 goto finish
if errorlevel 1 goto error
goto finish

:stop
cmd.exe /C start "" /MIN call "E:\Web-Development-Learn\Project\PHP\killprocess.bat" "httpd.exe"

if not exist "E:\Web-Development-Learn\Project\PHP\apache\logs\httpd.pid" GOTO finish
del "E:\Web-Development-Learn\Project\PHP\apache\logs\httpd.pid"
goto finish

:error
echo Error starting Apache

:finish
exit
