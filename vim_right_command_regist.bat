@echo off

reg add "HKEY_CLASSES_ROOT\*\shell\Vim�ŕҏW\command" /f
reg add "HKEY_CLASSES_ROOT\*\shell\Vim�ŕҏW\command" /v "" /t REG_SZ /d "\"C:\Windows\SysWow64\wscript.exe\" \"C:\Tools\vim\vim_run.js\" \"gvim\" \"%%1\"" /f
