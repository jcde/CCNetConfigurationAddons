msiexec /i "MSBuild Extension Pack 3.5.msi" /quiet /qn /norestart /log "logs\MSBuild Extension Pack 3.5.msi.log"
msiexec /i "MSBuild Extension Pack 3.5 (x64).msi" /quiet /qn /norestart /log "logs\MSBuild Extension Pack 3.5 (x64).msi.log"
msiexec /i "MSBuild.Community.Tasks.v1.4.0.88.msi" /quiet /qn /norestart /log "logs\MSBuild.Community.Tasks.v1.4.0.88.msi.log"

msiexec /i "NUnit-2.6.4.msi" /quiet /qn /norestart /log "logs\NUnit-2.6.4.msi.log"
copy nunit-console.bat %windir%

copy nuget.exe %windir%

nsis\nsis-2.46-setup.exe /S
copy nsis\makensis.bat %windir%
copy nsis\SimpleSC.dll "%ProgramFiles(x86)%\nsis\plugins" 
copy nsis\AccessControl.dll "%ProgramFiles(x86)%\nsis\plugins" 

rem other/CruiseControl.NET-1.8.5.0-Setup.exe /S
rem other/zip-3.0-setup.exe /S