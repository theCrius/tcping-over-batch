@echo off
set /p host=host Address: 
tcping.exe -j -t -d --tee Log_%host%.log %host%