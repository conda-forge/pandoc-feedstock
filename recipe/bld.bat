stack setup

stack install

if not exist %LIBRARY_BIN% mkdir %LIBRARY_BIN% || exit 1

copy %TEMP%\Pandoc\*.exe %LIBRARY_BIN% || exit 1
