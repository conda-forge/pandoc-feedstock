mkdir -p ${PREFIX}/bin
if [[ "$target_platform" == linux-aarch64 ]]; then
    mv bin/* ${PREFIX}/bin
else
    stack --extra-include-dirs ${PREFIX}/include --extra-lib-dirs ${PREFIX}/lib install --ghc-options='$GHC_OPTIONS' pandoc
    mv ~/.local/bin/pandoc ${PREFIX}/bin
fi
