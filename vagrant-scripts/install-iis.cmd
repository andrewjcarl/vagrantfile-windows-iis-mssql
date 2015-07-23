@echo off

echo Installing IIS 7.5, it will take a while...
CMD /C START /w PKGMGR.EXE /l:log.etw /iu:IIS-WebServerRole

:: register ASP.NET with IIS
%windir%\Microsoft.NET\Framework\v4.0.30319\aspnet_regiis.exe -i
%windir%\Microsoft.NET\Framework64\v4.0.30319\aspnet_regiis.exe -i

echo Done!