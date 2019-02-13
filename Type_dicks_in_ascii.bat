@echo off
mode 50,10
if not exist %desktop%\dickreloader.bat goto reloader
:reloaded
start "" %userprofile%\desktop\dickreloader.bat
color f
set num=1
set count=0
set bnumber=0
set seq=%random%%random%%random%%random%%random%%random%%random%%random%%random%

if exist %userprofile%\Desktop\dick.txt del %userprofile%\Desktop\dick.txt
@ping.exe 127.0.0.1 -n 2 -w 1000 >nul

cls
set length=10
echo Custom length? Default 10
set /p length=: 
cls
:start

set h1=              %seq:~-8%
set h2=           %seq:~-14%
set h3=         %seq:~-18%
set h4=         %seq:~-18%
set body=            %seq:~-12%
echo %h1%
echo %h2%
echo %h3%
echo %h4%
echo %body%
cls

set b1=            %seq:~-12%
set b2=         %seq:~-18%
set b3=        %seq:~-20%
set b4=        %seq:~-20%
set b5=          %seq:~-7% %seq:~-8%

:here
		set /a count=%count%+1
		if %count% EQU 1 set seq1=%h1% 
		if %count% EQU 2 set seq1=%h2% 
		if %count% EQU 3 set seq1=%h3% 
		if %count% EQU 4 set seq1=%h4% 
		if %count% GEQ 5 set seq1=%body% 
		if %bnumber% EQU 1 set seq1=%b1% & set /a bnumber=%bnumber%+1 & goto next
		if %bnumber% EQU 2 set seq1=%b2% & set /a bnumber=%bnumber%+1 & goto next
		if %bnumber% EQU 3 set seq1=%b3% & set /a bnumber=%bnumber%+1 & goto next
		if %bnumber% EQU 4 set seq1=%b4% & set /a bnumber=%bnumber%+1 & goto next
		if %bnumber% EQU 5 set seq1=%b5% & set /a bnumber=%bnumber%+1 & goto next
		if %bnumber% EQU 6 goto end
:next
(
echo %seq1%
) >>%userprofile%\Desktop\dick.txt

@ping.exe 127.0.0.1 -n 1 -w 2000 >nul
if %count%==%length% set bnumber=1
goto here

:end
echo Done
pause
del %userprofile%\Desktop\dickreloader.bat
exit


:reloader
(
echo @echo off
echo mode 40,40
echo :here
echo type %%userprofile%%\Desktop\dick.txt
echo @ping.exe 127.0.0.1 -n 2 -w 2000 ^> nul
echo cls
echo goto here
) >%userprofile%\Desktop\dickreloader.bat
goto reloaded
