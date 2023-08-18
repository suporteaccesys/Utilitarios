@echo

echo off Limpando cache

taskkill /IM explorer.exe /F

del “%localappdata%\IconCache.db” /A

start explorer