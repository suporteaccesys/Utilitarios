@echo off
title Instalacao Classe ID

echo ==========================================
echo Instalacao das DLLs Classe ID
echo ==========================================
echo.

:: Verifica privilegios administrativos
net session >nul 2>&1
if %errorlevel% neq 0 (
echo ERRO: Execute este BAT como Administrador.
echo.
pause
exit /b 1
)

cd /d "%~dp0"

echo Copiando DLLs para System32...
copy /Y capicom.dll "%windir%\System32"
copy /Y iconv.dll "%windir%\System32"
copy /Y libeay32.dll "%windir%\System32"
copy /Y libxml2.dll "%windir%\System32"
copy /Y libxmlsec.dll "%windir%\System32"
copy /Y libxmlsec-openssl.dll "%windir%\System32"
copy /Y libxslt.dll "%windir%\System32"
copy /Y msxml5.dll "%windir%\System32"
copy /Y msxml5r.dll "%windir%\System32"
copy /Y ssleay32.dll "%windir%\System32"
copy /Y zlib1.dll "%windir%\System32"

if exist "%windir%\SysWOW64" (
echo.
echo Copiando DLLs para SysWOW64...

copy /Y capicom.dll "%windir%\SysWOW64\"
copy /Y iconv.dll "%windir%\SysWOW64\"
copy /Y libeay32.dll "%windir%\SysWOW64\"
copy /Y libxml2.dll "%windir%\SysWOW64\"
copy /Y libxmlsec.dll "%windir%\SysWOW64\"
copy /Y libxmlsec-openssl.dll "%windir%\SysWOW64\"
copy /Y libxslt.dll "%windir%\SysWOW64\"
copy /Y msxml5.dll "%windir%\SysWOW64\"
copy /Y msxml5r.dll "%windir%\SysWOW64\"
copy /Y ssleay32.dll "%windir%\SysWOW64\"
copy /Y zlib1.dll "%windir%\SysWOW64\"

)

echo.
echo Registrando DLLs...

:: Registro 64 bits
if exist "%windir%\System32\regsvr32.exe" (
"%windir%\System32\regsvr32.exe" /s "%windir%\System32\capicom.dll"
"%windir%\System32\regsvr32.exe" /s "%windir%\System32\msxml5.dll"
)

:: Registro 32 bits
if exist "%windir%\SysWOW64\regsvr32.exe" (
"%windir%\SysWOW64\regsvr32.exe" /s "%windir%\SysWOW64\capicom.dll"
"%windir%\SysWOW64\regsvr32.exe" /s "%windir%\SysWOW64\msxml5.dll"
)

echo.
echo Instalacao concluida com sucesso.
echo.

pause
