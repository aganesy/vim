@echo off

cd /d %~dp0

set homeDir=%HOMEDRIVE%%HOMEPATH%
set currentDir=%CD%
set settingDir=%currentDir%\settings
set makeLink32Dir=%currentDir%\vim74-kaoriya-win32
set makeLink64Dir=%currentDir%\vim74-kaoriya-win64

set VIMRC=vimrc
set dotVIMRC=.vimrc
set underVIMRC=_vimrc
set GVIMRC=gvimrc
set dotGVIMRC=.gvimrc
set underGVIMRC=_gvimrc

mklink %makeLink32Dir%\%VIMRC% %settingDir%\%VIMRC%
mklink %makeLink32Dir%\%dotVIMRC% %settingDir%\%dotVIMRC%
mklink %makeLink32Dir%\%underVIMRC% %settingDir%\%underVIMRC%
mklink %makeLink32Dir%\%GVIMRC% %settingDir%\%GVIMRC%
mklink %makeLink32Dir%\%dotGVIMRC% %settingDir%\%dotGVIMRC%
mklink %makeLink32Dir%\%underGVIMRC% %settingDir%\%underGVIMRC%

mklink %makeLink64Dir%\%VIMRC% %settingDir%\%VIMRC%
mklink %makeLink64Dir%\%dotVIMRC% %settingDir%\%dotVIMRC%
mklink %makeLink64Dir%\%underVIMRC% %settingDir%\%underVIMRC%
mklink %makeLink64Dir%\%GVIMRC% %settingDir%\%GVIMRC%
mklink %makeLink64Dir%\%dotGVIMRC% %settingDir%\%dotGVIMRC%
mklink %makeLink64Dir%\%underGVIMRC% %settingDir%\%underGVIMRC%

mklink %homeDir%\%VIMRC% %settingDir%\%VIMRC%
mklink %homeDir%\%dotVIMRC% %settingDir%\%dotVIMRC%
mklink %homeDir%\%underVIMRC% %settingDir%\%underVIMRC%
mklink %homeDir%\%GVIMRC% %settingDir%\%GVIMRC%
mklink %homeDir%\%dotGVIMRC% %settingDir%\%dotGVIMRC%
mklink %homeDir%\%underGVIMRC% %settingDir%\%underGVIMRC%

exit

