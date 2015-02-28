@ECHO OFF
:: shaman early build for developers
:: created by lelufg
title shaman for developers
color D
echo "Howdy! this is shaman, a folder locker."
@ping 127.0.0.1 -n 2 -w 1000 > nul
echo "I'm going to secure your files and your folders just with a click."
@ping 127.0.0.1 -n 2 -w 1000 > nul
echo "Let's proceed, shall we?"
pause
:: early build. do not use it as main tool.
echo "let me show to you some cool options..."
:menu
:: options
echo shaman debug menu
echo 1 - Download shaman devkit
echo 2 - Contact
echo 3 - Github
echo 4 - Initialize shaman (EXPERMIMENTAL!)
echo 5 - Linux Version
echo 6 - Get me out of here! 
echo 
pause
set /p m=please insert a command and then press enter
if %m%==1 goto devkit
if %m%==2 goto contact
if %m%==3 goto git
if %m%==4 goto shaman
if %m%==5 goto linux
if %m%==6 goto quit
:devkit
start http://devkit.shamanbit.esy.es
echo done.
pause
:contact
echo lelfug@hotmail.com send me an email :)
echo done.
pause
:github
start http://github.com/lelufg/shaman
echo done.
pause
:shaman
:: opencripto devkit for shaman @ shelleprechaun
color C
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto unlock
if NOT EXIST locked folder goto shaman
:confirmation_log
echo Do you want to lock this folder? (Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==N goto menu
if %cho%==n goto menu
echo done.
goto confirmation_log
:lock
ren locked folder "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Your folder has been locked.
pause
goto end
:unlock
echo Username
set/p "user=>"
if NOT %user%== shaman goto fail
goto pass
:pass
echo Password
set/p "senha=>"
if NOT %senha%== shamanbit goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Arquivos
cd locked folder
echo Folder unlocked!
goto End
:fail
echo invalid passport. try again
goto end
:shaman
md locked folder
echo Pasta criada com sucesso
cd locked folder
goto menu
:linux
echo linux version are not avaliable at the moment. 
echo but if you want to help shaman development at linux, fork it on github!
echo just select the option github above the main menu and you'll be redirected to it!
pause
goto menu
:quit
exit
