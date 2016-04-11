@echo off

cd /d %~dp0

mkdir bundle
git clone git://github.com/Shougo/neobundle.vim bundle/neobundle.vim
exit

