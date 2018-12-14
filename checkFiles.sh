#!/bin/bash
# find . -maxdepth 1 -iname ".*" \! -name "." \! -iname ".git" -exec diff {}  ${HOME}/{} \;
for file in `find . -maxdepth 1 -iname ".*" \! -name "." \! -iname ".git"`
do
    file=$(echo ${file} | sed "s/^\.\///ig")
    echo -e "########### Checking " ${file}
    diff -r ${file}  ${HOME}/${file}
done
#find . -maxdepth 1 -iname ".*" \! -name "." \! -iname ".git" -exec "rm" "-Rf" "$HOME/."{} ";"

