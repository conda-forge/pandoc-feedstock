#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

mkdir -p ${PREFIX}/bin
mv bin/* ${PREFIX}/bin
