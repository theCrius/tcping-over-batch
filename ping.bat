@echo off

SET /p host=host Address: 
SET /p toLog=Create a log (y/n): 

SET "d=%date:~0,2%%date:~3,2%%date:~6,4%"
SET "hours=%time:~0,2%"
IF "%hours:~0,1%" == " " (
	SET hours=0%hours:~1,1% 
)
SET "t=%hours%%time:~3,2%%time:~6,2%"
SET "filename=%d%_%t%_%host%.log"

IF "%toLog%" == "y" (
	tcping.exe -j -t -d --tee %filename% %host% 
) ELSE (
	tcping.exe -j -t -d %host%
)
