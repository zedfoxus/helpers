@echo off
if "%1"=="" (
	echo Usage: cdb 4 to move back 4 directories
	exit /B
)

for /L %%G in (1,1,%1) do (
	cd..
)