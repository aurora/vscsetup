#!/usr/bin/env bash

#
# Tool for auto-installing some usefule extensiomns
# for Visual Studio Code
#

if ! command -v code >/dev/null 2>&1; then
    echo "cli tool of Visual Studio Code is not installed."
    exit
fi

# default extensions
ext="hnw.vscode-auto-open-markdown-preview"

if command -v php; then
    # install useful PHP extensions
    ext="$ext
    felixfbecker.php-debug
    felixfbecker.php-intellisense"
fi

for i in $ext; do
    echo "$i"
    #code --install-extension "$i"
done
