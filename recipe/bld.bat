stack setup

stack install

if not exist %LIBRARY_BIN% mkdir %LIBRARY_BIN% || exit 1
echo %LIBRARY_BIN%
rem AppData\Roaming\local\bin
copy %APPDATA%\local\bin\*.exe %LIBRARY_BIN% || exit 1
