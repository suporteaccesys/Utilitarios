@echo off
echo Habilitando drivers ocultos....
echo.
set DEVMGR_SHOW_DETAILS=1
set DEVMGR_SHOW_NONPRESENT_DEVICES=1
echo Abrindo Gerenciador de Dispositivos....
echo.
start devmgmt.msc