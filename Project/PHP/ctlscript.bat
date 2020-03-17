@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist E:\Web-Development-Learn\Project\PHP\hypersonic\scripts\ctl.bat (start /MIN /B E:\Web-Development-Learn\Project\PHP\server\hsql-sample-database\scripts\ctl.bat START)
if exist E:\Web-Development-Learn\Project\PHP\ingres\scripts\ctl.bat (start /MIN /B E:\Web-Development-Learn\Project\PHP\ingres\scripts\ctl.bat START)
if exist E:\Web-Development-Learn\Project\PHP\mysql\scripts\ctl.bat (start /MIN /B E:\Web-Development-Learn\Project\PHP\mysql\scripts\ctl.bat START)
if exist E:\Web-Development-Learn\Project\PHP\postgresql\scripts\ctl.bat (start /MIN /B E:\Web-Development-Learn\Project\PHP\postgresql\scripts\ctl.bat START)
if exist E:\Web-Development-Learn\Project\PHP\apache\scripts\ctl.bat (start /MIN /B E:\Web-Development-Learn\Project\PHP\apache\scripts\ctl.bat START)
if exist E:\Web-Development-Learn\Project\PHP\openoffice\scripts\ctl.bat (start /MIN /B E:\Web-Development-Learn\Project\PHP\openoffice\scripts\ctl.bat START)
if exist E:\Web-Development-Learn\Project\PHP\apache-tomcat\scripts\ctl.bat (start /MIN /B E:\Web-Development-Learn\Project\PHP\apache-tomcat\scripts\ctl.bat START)
if exist E:\Web-Development-Learn\Project\PHP\resin\scripts\ctl.bat (start /MIN /B E:\Web-Development-Learn\Project\PHP\resin\scripts\ctl.bat START)
if exist E:\Web-Development-Learn\Project\PHP\jetty\scripts\ctl.bat (start /MIN /B E:\Web-Development-Learn\Project\PHP\jetty\scripts\ctl.bat START)
if exist E:\Web-Development-Learn\Project\PHP\subversion\scripts\ctl.bat (start /MIN /B E:\Web-Development-Learn\Project\PHP\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist E:\Web-Development-Learn\Project\PHP\lucene\scripts\ctl.bat (start /MIN /B E:\Web-Development-Learn\Project\PHP\lucene\scripts\ctl.bat START)
if exist E:\Web-Development-Learn\Project\PHP\third_application\scripts\ctl.bat (start /MIN /B E:\Web-Development-Learn\Project\PHP\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist E:\Web-Development-Learn\Project\PHP\third_application\scripts\ctl.bat (start /MIN /B E:\Web-Development-Learn\Project\PHP\third_application\scripts\ctl.bat STOP)
if exist E:\Web-Development-Learn\Project\PHP\lucene\scripts\ctl.bat (start /MIN /B E:\Web-Development-Learn\Project\PHP\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist E:\Web-Development-Learn\Project\PHP\subversion\scripts\ctl.bat (start /MIN /B E:\Web-Development-Learn\Project\PHP\subversion\scripts\ctl.bat STOP)
if exist E:\Web-Development-Learn\Project\PHP\jetty\scripts\ctl.bat (start /MIN /B E:\Web-Development-Learn\Project\PHP\jetty\scripts\ctl.bat STOP)
if exist E:\Web-Development-Learn\Project\PHP\hypersonic\scripts\ctl.bat (start /MIN /B E:\Web-Development-Learn\Project\PHP\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist E:\Web-Development-Learn\Project\PHP\resin\scripts\ctl.bat (start /MIN /B E:\Web-Development-Learn\Project\PHP\resin\scripts\ctl.bat STOP)
if exist E:\Web-Development-Learn\Project\PHP\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT E:\Web-Development-Learn\Project\PHP\apache-tomcat\scripts\ctl.bat STOP)
if exist E:\Web-Development-Learn\Project\PHP\openoffice\scripts\ctl.bat (start /MIN /B E:\Web-Development-Learn\Project\PHP\openoffice\scripts\ctl.bat STOP)
if exist E:\Web-Development-Learn\Project\PHP\apache\scripts\ctl.bat (start /MIN /B E:\Web-Development-Learn\Project\PHP\apache\scripts\ctl.bat STOP)
if exist E:\Web-Development-Learn\Project\PHP\ingres\scripts\ctl.bat (start /MIN /B E:\Web-Development-Learn\Project\PHP\ingres\scripts\ctl.bat STOP)
if exist E:\Web-Development-Learn\Project\PHP\mysql\scripts\ctl.bat (start /MIN /B E:\Web-Development-Learn\Project\PHP\mysql\scripts\ctl.bat STOP)
if exist E:\Web-Development-Learn\Project\PHP\postgresql\scripts\ctl.bat (start /MIN /B E:\Web-Development-Learn\Project\PHP\postgresql\scripts\ctl.bat STOP)

:end

