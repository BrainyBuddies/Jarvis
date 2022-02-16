@echo off
echo                               Please Set Up Jarvis Before You Chat With Him....
echo.
echo.                 Note Though Dark is default, Jarvis wont start without configuring it.
echo.
echo                  Select Your Application Theme: Light or Dark(default). Enter LI for light and Drk for dark
:loop
set /p input="[You]: "
echo %input%|findstr /i "LI" > nul && echo Theme was Light > .\Data\Schemes\Light.jtme && if exist .\Data\Schemes\Dark.jtme ( del .\Data\Schemes\Dark.jtme )  && echo. && echo ----------------------------------------------------------------------------------------------------------------------- && echo. && echo               Please wait.     Setting Vaules..... && ping -n 4 localhost >nul && start Jarvis.bat && exit && goto :loop
echo %input%|findstr /i "Drk" > nul && echo Theme was Dark > .\Data\Schemes\Dark.jtme && if exist .\Data\Schemes\Light.jtme ( del .\Data\Schemes\Light.jtme ) && echo. && echo ----------------------------------------------------------------------------------------------------------------------- && echo. && echo               Please wait.     Setting Vaules..... && ping -n 4 localhost >nul && start Jarvis.bat && exit && goto :loop