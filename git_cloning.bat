@echo off

cd /d %~dp0

mkdir bundle
git clone https://github.com/Shougo/neobundle.vim bundle/neobundle.vim
exit

