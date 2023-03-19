echo off
FOR /F %%i IN (last-path.txt) DO (
	set oldpath=%%i
)

set currentpath=%~dp0
set currentpath=%currentpath:~0,-1%
set currentpathescaped=%currentpath:\=\\%
set oldpath=%oldpath:\=\\%

%currentpath%\sed.exe "s/%oldpath%/%currentpathescaped%/g" %currentpath%\pyvenv.cfg>%currentpath%\tmp.txt
copy /y %currentpath%\tmp.txt %currentpath%\pyvenv.cfg
%currentpath%\sed.exe "s/%oldpath%/%currentpath%/g" %currentpath%\Scripts\activate>%currentpath%\tmp.txt
copy /y %currentpath%\tmp.txt %currentpath%\Scripts\activate
%currentpath%\sed.exe "s/%oldpath%/%currentpath%/g" %currentpath%\Scripts\activate.bat>%currentpath%\tmp.txt
copy /y %currentpath%\tmp.txt %currentpath%\Scripts\activate.bat

echo %currentpath%>last-path.txt 
