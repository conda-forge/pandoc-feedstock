mkdir -p ${PREFIX}/bin
if [[ "$target_platform" == linux-aarch64 ]]; then
    mv bin/* ${PREFIX}/bin
else
    if [[ "$target_platform" == linux-* ]]; then
        # ghc-options taken from https://github.com/jgm/pandoc/blob/2.19.2/Makefile#L16
        stack --extra-include-dirs ${PREFIX}/include --extra-lib-dirs ${PREFIX}/lib install --ghc-options='-fdiagnostics-color=always -j4 +RTS -A8m -RTS' pandoc-cli
    elif [[ "$target_platform" == osx-* ]]; then
        # ghc-options taken from https://github.com/jgm/pandoc/blob/2.19.2/.github/workflows/release-candidate.yml#L100
        stack --extra-include-dirs ${PREFIX}/include --extra-lib-dirs ${PREFIX}/lib install --ghc-options='-j4 +RTS -A256m -RTS -split-sections' pandoc-cli
    else
        stack --extra-include-dirs ${PREFIX}/include --extra-lib-dirs ${PREFIX}/lib install pandoc
    fi
    mv ~/.local/bin/pandoc ${PREFIX}/bin
fi
