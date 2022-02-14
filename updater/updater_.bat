@echo off
echo                                                Loading...
ping -n 2 localhost > nul
cls                                          
echo                                          Checking for updates
ping -n 3 localhost > nul
echo Checking: [Alarm Clock - Main File]
ping -n 3 localhost > nul
echo Checking: [Alarm Clock - Sub Files]
ping -n 2 localhost > nul
echo Checking: [Jarvis.bat]
ping -n 2 localhost > nul
echo Checking: [LogCreater.bat]
ping -n 2 localhost > nul
echo Checking: [Restarter.bat]
ping -n 2 localhost > nul
echo Checking: [html files]
ping -n 2 localhost > nul
echo Checking: [Workers]
ping -n 2 localhost > nul
echo Checking: [Data]
ping -n 2 localhost > nul
echo Checking: [Alarm]
ping -n 2 localhost > nul

cls
echo                           No updates found. [Automatically exiting in (5)seconds]
ping -n 2 localhost > nul
cls
echo                           No updates found. [Automatically exiting in (4)seconds]
ping -n 2 localhost > nul
cls
echo                           No updates found. [Automatically exiting in (3)seconds]
ping -n 2 localhost > nul
cls
echo                           No updates found. [Automatically exiting in (2)seconds]
ping -n 2 localhost > nul
cls
echo                           No updates found. [Automatically exiting in (1)seconds]
ping -n 2 localhost > nul
cls
echo                           No updates found. [Automatically exiting in (0)seconds]
exit