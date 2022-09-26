mkdir -p ${PREFIX}/bin
if [[ "$target_platform" == linux-* ]]; then
    # ghc-options taken from https://github.com/jgm/pandoc/blob/2.19.2/Makefile#L16
    export GHC_OPTIONS="-fdiagnostics-color=always -j4 +RTS -A8m -RTS"
elif [[ "$target_platform" == osx-* ]]; then
    # ghc-options taken from https://github.com/jgm/pandoc/blob/2.19.2/.github/workflows/release-candidate.yml#L100
    export GHC_OPTIONS="-j4 +RTS -A256m -RTS -split-sections"
if [[ "$target_platform" == linux-aarch64 ]]; then
    mv bin/* ${PREFIX}/bin
else
    stack --extra-include-dirs ${PREFIX}/include --extra-lib-dirs ${PREFIX}/lib install --ghc-options='$GHC_OPTIONS' pandoc
    mv ~/.local/bin/pandoc ${PREFIX}/bin
fi
