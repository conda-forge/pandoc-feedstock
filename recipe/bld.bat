:: ghc-options taken from https://github.com/jgm/pandoc/blob/3.1.1/.github/workflows/release-candidate.yml#L34
stack build -j4 +RTS -A256m -RTS --flag pandoc:embed_data_files --flag pandoc-cli:lua --flag pandoc-cli:server --copy-bins pandoc-cli
MKDIR %LIBRARY_BIN%
MOVE "bin\*.* %LIBRARY_BIN%
