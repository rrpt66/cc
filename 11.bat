powershell -WindowStyle Hidden -Command "& {}"
:check
tasklist /FI "IMAGENAME eq explorer.exe"

if %errorlevel%== 1 (
 
 goto :noexplorer
)
goto :menu

:noexplorer
goto check

:menu
cls
echo scan................
c:\adw.exe /eula /scan /noreboot
cls
echo clearing................
c:\adw.exe /eula /clean /noreboot
cls
C:\AdwCleaner\Logs\AdwCleaner[S00].txt
TIMEOUT 3 /nobreak > nul
echo -Delete program scan virus....
TIMEOUT 3 /nobreak > nul
c:\adw.exe /uninstall  & del /q %temp%\adw.exe
