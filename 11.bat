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
c:\adw.exe /scan /clean