mkdir -p ${PREFIX}/bin
if [[ "$target_platform" == linux-aarch64 ]] || [[ "$target_platform" == osx-arm64 ]]; then
    mv bin/* ${PREFIX}/bin
else
    if [[ "$target_platform" == linux-* ]]; then
        # ghc-options taken from https://github.com/jgm/pandoc/blob/3.1.1/Makefile#L15
        stack --extra-include-dirs ${PREFIX}/include --extra-lib-dirs ${PREFIX}/lib install --ghc-options='-fwrite-ide-info -fdiagnostics-color=always -j4 +RTS -A8m -RTS' pandoc-cli
    elif [[ "$target_platform" == osx-* ]]; then
        # ghc-options taken from https://github.com/jgm/pandoc/blob/3.1.1/.github/workflows/release-candidate.yml#L97
        stack --extra-include-dirs ${PREFIX}/include --extra-lib-dirs ${PREFIX}/lib install --ghc-options='-j4 +RTS -A256m -RTS -split-sections' pandoc-cli
    else
        stack --extra-include-dirs ${PREFIX}/include --extra-lib-dirs ${PREFIX}/lib install pandoc-cli
    fi
    mv ~/.local/bin/pandoc ${PREFIX}/bin
fi
