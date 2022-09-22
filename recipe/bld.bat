stack install --ghc-options='%GHC_OPTIONS%' pandoc
MKDIR %PREFIX%\bin
MOVE %APPDATA%\local\bin\pandoc.exe %PREFIX%\bin\pandoc.exe
