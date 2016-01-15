#!/usr/bin/bash
find . -maxdepth 1 \! -name "." \! -iname ".git" -exec "rm" "-Rf" "$HOME/"{} ";"
find . -maxdepth 1 \! -name "." \! -iname ".git" -exec "cp" "-R" {} "$HOME/" ";"

