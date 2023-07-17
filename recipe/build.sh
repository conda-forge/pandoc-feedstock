mkdir -p ${PREFIX}/bin
if [[ "$target_platform" == linux-aarch64 ]] || [[ "$target_platform" == osx-arm64 ]]; then
    mv bin/* ${PREFIX}/bin
else
    if [[ "$target_platform" == linux-* ]]; then
        # ghc-options taken from https://github.com/jgm/pandoc/blob/3.1.4/Makefile#L15
        stack --extra-include-dirs ${PREFIX}/include --extra-lib-dirs ${PREFIX}/lib install --ghc-options='-fwrite-ide-info -fdiagnostics-color=always -j4 +RTS -A8m -RTS' pandoc-cli
    else
        stack --extra-include-dirs ${PREFIX}/include --extra-lib-dirs ${PREFIX}/lib install --flag pandoc:embed_data_files --flag pandoc-cli:lua --flag pandoc-cli:server pandoc-cli
    fi
    mv ~/.local/bin/pandoc ${PREFIX}/bin
fi
