#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

mkdir -p ${PREFIX}/bin
mv bin/* ${PREFIX}/bin

# The pandoc binary was built against libffi 3.2 but is compatible with 3.3 which uses a different SONAME
if [[ ${target_platform} =~ .*linux-ppc64le.* ]]; then
    patchelf --replace-needed libffi.so.6 libffi.so.7  ${PREFIX}/bin/pandoc
fi
