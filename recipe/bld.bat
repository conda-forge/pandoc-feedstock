dir

msiexec /a pandoc-%PKG_VERSION%-windows-x86_64.msi /qb TARGETDIR=%TEMP% || exit 1

if not exist %SCRIPTS% mkdir %SCRIPTS% || exit 1

copy %TEMP%\Pandoc\*.exe %SCRIPTS% || exit 1
