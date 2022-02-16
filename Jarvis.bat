chcp 65001 >NUL
@echo off
md .\Data\Jarvis-Replays\%date%
md  .\Data\User-Chat-History\%date%
md .\Data\Schemes
cls
for /F "tokens=2" %%i in ('date /t') do set mydate=%%i
set mytime=%time%
Set objEmail = CreateObject("CDO.Message")
echo.
echo.
echo ...Jarvis is Thinking
ping -n 2 localhost >nul
cls
if not exist ".\Data\Schemes\Dark.jtme" (
if not exist ".\Data\Schemes\Light.jtme" (
Start Wsgui.bat
exit
)
)
if exist ".\Data\Schemes\Dark.jtme" (
if exist ".\Data\Schemes\Light.jtme" (
goto :loop
)
)
if exist ".\Data\Schemes\Light.jtme" (
color F9
)
if exist ".\Data\Schemes\Dark.jtme" (
color 0F
)
echo.            
echo.
echo  📝Note: DO'NOT CLOSE THE WINDOW. ENTER EXIT TO PROPERLY SAVE THE HISTORY
ECHO   OF YOUR CHAT AND EXIT OR ELSE YOUR CHAT WILL BE CORRUPTED.
echo.
echo.                                       
echo 🤖Hi, I am Jarvis🤖 (Created by MKXGames AKA BrainyBuddies). (●'◡'●)  Type something to start talking with me.
echo if you want help using Jarvis, enter: ?help 🙂
echo.
echo For example(Jarvis, Open J-Dictionary) or (Hi Jarvis, What's the Weather out today?).
:loop
echo.
set /p input="[You]: "
cls
 
doskey /history > .\Data\User-Chat-History\%date%\DATA.log

echo.
echo.
echo --------------------------------------------Your Message👇--------------------------------------------------------------
echo.
echo [You]: %input%
echo.
echo ------------------------------------------------------------------------------------------------------------------------
echo.
echo.
echo ...Jarvis is Thinking
echo.
echo.
ping -n 2 localhost >nul
echo ------------------------------------------Replay from Jarvis👇----------------------------------------------------------
echo.
echo %input%|findstr /i "hello" >nul && echo [Jarvis]: Hi buddy 😎  && echo [Jarvis]:                Hi buddey> .\Data\Jarvis-Replays\%date%\JarvisReplays.log && echo. && echo ----------------------------------------------------------------------------------------------------------------------- && echo. && goto :loop

echo %input%|findstr /i "friend" >nul && echo [Jarvis]:   Oh, Thanks bro.😊 I will be like what you wish.  && echo [Jarvis]:  Hi buddey> .\Data\Jarvis-Replays\%date%\JarvisReplays.log  && echo. && echo ----------------------------------------------------------------------------------------------------------------------- && echo. && goto :loop
echo %input%|findstr /i "hm" >nul && echo [Jarvis]: Need help? if that's the matter then enter🤔 "?help" && echo [Jarvis]:  Need help? if that's the matter then enter "?help"> .\Data\Jarvis-Replays\%date%\JarvisReplays.log  && echo. && echo ----------------------------------------------------------------------------------------------------------------------- goto :loop
echo %input%|findstr /i "yeet" >nul && echo [Jarvis]: Yeeting...  && ping -n 2 localhost >nul && echo yeeted lol! 😆 && echo [Jarvis]: Yeeting...> .\Data\Jarvis-Replays\%date%\JarvisReplays.log  && echo. && echo ----------------------------------------------------------------------------------------------------------------------- && echo. && echo [Jarvis]: Yeeted lol!> .\Data\Jarvis-Replays\%date%\JarvisReplays.log  && echo. && echo ----------------------------------------------------------------------------------------------------------------------- && echo. && goto :loop
echo %input%|findstr /i "?help" >nul &&  ".\html files\Help.html" && goto :loop
echo %input%|findstr /i "?update" >nul &&  echo [Jarvis]: Loading... Please Wait...  && start .\updater\updater_.bat && start lgsaver.bat && goto :loop
echo %input%|findstr /i "Hi" >nul && echo [Jarvis]: Hi bro! how's it goining? (●'◡'●) && echo [Jarvis]: Hi bro! how's it goining?> .\Data\Jarvis-Replays\%date%\JarvisReplays.log  && echo. && echo ----------------------------------------------------------------------------------------------------------------------- && echo. && goto :loop
echo %input%|findstr /i "J-Dictionary Dictionary" >nul && start schr.bat && exit && goto :loop
echo %input%|findstr /i "Weather Weather's Weathers" >nul && start chrome "https://www.google.com/search?client=chrome-b-d&q=weather+today" && echo [Jarvis]:                              Getting weather information.... && start Jarvis.bat && echo. && echo -----------------------------------------------------------------------------------------------------------------------  && goto :loop
echo %input%|findstr /i "clear-logs" >nul && echo                                      Clearing logs && echo Are you sure you want to clear logs? in future it may help you understand what do you chat with Jarvis. && echo Clearing User Chat Logs && ping -n 2 localhost > nul && del .\Data\User-Chat-History\%date% &&  del .\Data\Jarvis-Replays\%date%\JarvisReplays.log  && echo. && echo ----------------------------------------------------------------------------------------------------------------------- && echo. && cls && echo Clearing Jarvis Replay Logs && ping -n 2 localhost > nul && cls && echo Clearing Installation or update logs... && ping -n 2 localhost > nul && cls && ping -n 2 localhost > nul && cls && color 2 && echo           Logs cleared sucessfully! && goto :loop
echo %input%|findstr /i "?restart" >nul && echo [Jarvis]: Restarting... && ping -n 2 localhost && Start .\Workers\Restarter.bat && exit && goto :eof
echo %input%|findstr /i "Dumb heck fool suck hell mentel doom shit" >nul && echo [Jarvis]: Sorry if I done something wrong. you can always enter : ?commands to view what can you chat with Jarvis. if you want more help use the command: ?help && goto :loop
echo %input%|findstr /i "ok yeah well done going" >nul && echo [Jarvis]: ok bro, done.👍 && echo [Jarvis]: ok bro.> .\Data\Jarvis-Replays\%date%\JarvisReplays.log  && echo. && echo ----------------------------------------------------------------------------------------------------------------------- && echo. && goto :loop
echo %input%|findstr /i "Playa game" >nul && echo [Jarvis]: Sorry This commands still in development state.&& echo[Jarvis]: Sorry This commands still in development state.> .\Data\Jarvis-Replays\%date%\JarvisReplays.log  && echo. && echo ----------------------------------------------------------------------------------------------------------------------- && echo. && goto :loop
echo %input%|findstr /i "Sorry apologies" >nul && echo [Jarvis]: It's ok Buddy. && goto :loop
echo %input%|findstr /i "exit bye ya" >nul && cls && echo [Jarvis]: Thanks for using Jarvis 🙏 bye see you.  && echo [Jarvis]: Thanks for using Jarvis bye see you. > .\Data\Jarvis-Replays\%date%\JarvisReplays.log  && echo. && echo ----------------------------------------------------------------------------------------------------------------------- && echo. && echo                       (Saving Chat Data in Logs) && ping -n 4 localhost > nul && echo The last message shown above ^ was typed by the user at: %time% (the time is only available in 24 hrs time format.). > .\Data\User-Chat-History\%date%\DATA.txt && exit && goto :loop

echo [Jarvis]: Sorry I Dont Know That One 🤔. && echo Use Command:  ?help for help && echo if you think Jarvis is not working properly, to fix Jarvis enter: ?restart. && echo [Jarvis]: Sorry I Dont Know That One. Use Command:  ?help to go to help page, if you think Jarvis is not working properly, to fix Jarvis enter: ?restart.> .\Data\Jarvis-Replays\%date%\JarvisReplays.log  && echo. && echo ----------------------------------------------------------------------------------------------------------------------- && echo. && goto :loop





