@echo off
set /p host=host Address: 

set "d=%date:~0,2%%date:~3,2%%date:~6,4%"
set "h=%time:~0,2%%time:~3,2%%time:~6,2%" 
set "filename=%d%_%h%_%host%.log" 

tcping.exe -j -t -d --tee %filename% %host%
