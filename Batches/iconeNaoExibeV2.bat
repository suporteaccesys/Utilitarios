@echo off

echo Encerrando Explorer...
taskkill /F /IM explorer.exe

timeout /t 2 >nul

echo Limpando cache de icones...
del /F /Q "%localappdata%\IconCache.db" 2>nul
del /F /Q "%localappdata%\Microsoft\Windows\Explorer\iconcache*" 2>nul

echo Limpando cache de miniaturas...
del /F /Q "%localappdata%\Microsoft\Windows\Explorer\thumbcache*" 2>nul

echo Reiniciando Explorer...
start explorer.exe

echo.
echo Cache reconstruido com sucesso.
pause