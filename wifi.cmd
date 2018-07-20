@echo off
color 0A
title virtual wifi router by dhruv
Echo.
echo             virtual wifi center maker
echo     what u want to say your router
set /p name=
cls
:pass
echo type the minimum 8 digit password
set /p letter=
cls
echo Type password (again!) to start.
set /p Letter2=
If /I %letter% == %Letter2% goto starx
goto pass
:starx
netsh wlan set hostednetwork ssid=%name%
netsh wlan set hostednetwork key=%letter%keyUsage=persistent
netsh wlan set hostednetwork mode=allow
netsh wlan start hostednetwork
pause>nul