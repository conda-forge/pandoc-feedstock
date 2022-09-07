stack --extra-include-dirs ${PREFIX}/include install pandoc
mkdir -p ${PREFIX}/bin
mv ~/.local/bin/pandoc ${PREFIX}/bin
