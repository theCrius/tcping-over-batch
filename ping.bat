@echo off

set "d=%date:~0,2%%date:~3,2%%date:~6,4%"
SET "hours=%time:~0,2%"
IF "%hours:~0,1%" == " " SET hours=0%hours:~1,1%
set "t=%hours%%time:~3,2%%time:~6,2%"

set /p host=host Address: 
set "filename=%d%_%t%_%host%.log"

tcping.exe -j -t -d --tee %filename% %host%
