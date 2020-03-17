@echo off
cd /D %~dp0
cmd.exe /C start "" /MIN call "E:\Web-Development-Learn\Project\PHP\killprocess.bat" "httpd.exe"
if not exist apache\logs\httpd.pid GOTO exit
del apache\logs\httpd.pid

:exit
