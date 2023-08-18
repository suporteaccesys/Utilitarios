@echo off
Ren igfxCPL.cpl igfxCPL.cpl.bak
echo Limpando registro

Taskkill /f /im explorer.exe
echo Finalizando explorer.exe

Explorer.exe
echo Iniciando explorer.exe

echo Processo finalizado. Pressione Qualquer tecla
Pause