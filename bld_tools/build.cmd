@echo off
set ProjectDir=%~dp0..\
cd /d "%~1..\..\"
:: �����㥬 �, �� �㦭� ���� ᪮��஢���
robocopy "%ProjectDir%addins" addins\ /mir /im /NJH /NJS /NP>nul
robocopy "%ProjectDir%tools" tools\ /mir /im /NJH /NJS /NP>nul
robocopy "%ProjectDir%www" www\ /mir /im /NJH /NJS /NP>nul
robocopy "%ProjectDir%load" ..\..\load\ /mir /im /NJH /NJS /NP>nul
:: ����६ �ਯ�� �� TypeScript
set rootdir=%cd%
cd /d "%ProjectDir%"
echo Typescript -^> JScript...
tsc.exe -p "src\ts" --outDir "%rootdir%\addins"
echo ��⮢�
:: �஢��塞 �����
echo ���⠪�-�஢�ઠ...
runner check snegopat /f "%cd%\" /d ver=8.3.18
echo ��⮢�
