@echo off

cd /d %~dp0

START "" "mklink_settings.bat"
START "" "git_cloning.bat"

if "%PROCESSOR_ARCHITECTURE%" == "x86" (
	if "%PROCESSOR_ARCHITEW6432%" == "AMD64" (
		REM echo 32bit process on 64bit OS - WOW64

		if "%1" == "vim" (
			START "" "vim74-kaoriya-win64\vim.exe"
		REM ) else if "%1" == "gvim" (
		) else  (
			START "" "vim74-kaoriya-win64\gvim.exe"
		)
	) else (
		REM echo 32bit process on 32bit OS

		if "%1" == "vim" (
			START "" "vim74-kaoriya-win32\vim.exe"
		REM ) else if "%1" == "gvim" (
		) else (
			START "" "vim74-kaoriya-win32\gvim.exe"
		)
	)
) else (
	REM echo 64bit process on 64bit OS

	if "%1" == "vim" (
		START "" "vim74-kaoriya-win64\vim.exe"
	REM ) else if "%1" == "gvim" (
	) else (
		START "" "vim74-kaoriya-win64\gvim.exe"
	)
)

exit

