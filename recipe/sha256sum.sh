#!/bin/bash

# usage: VERSION=2.17.0.1 ./sha256sum.sh
wget https://github.com/jgm/pandoc/releases/download/$VERSION/pandoc-$VERSION-linux-amd64.tar.gz
wget https://github.com/jgm/pandoc/releases/download/$VERSION/pandoc-$VERSION-linux-arm64.tar.gz
wget https://github.com/jgm/pandoc/releases/download/$VERSION/pandoc-$VERSION-macOS.zip
wget https://github.com/jgm/pandoc/releases/download/$VERSION/pandoc-$VERSION-windows-x86_64.msi

sha256sum \
    pandoc-$VERSION-linux-amd64.tar.gz \
    pandoc-$VERSION-linux-arm64.tar.gz \
    pandoc-$VERSION-macOS.zip \
    pandoc-$VERSION-windows-x86_64.msi
