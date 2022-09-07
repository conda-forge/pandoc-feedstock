stack --extra-include-dirs ${PREFIX}/include --extra-lib-dirs ${PREFIX}/lib install pandoc
mkdir -p ${PREFIX}/bin
mv ~/.local/bin/pandoc ${PREFIX}/bin
