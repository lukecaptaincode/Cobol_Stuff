#!/usr/bin/env bash
for d in */*/; do #for every dir in project
    cd $d #enter dir
    for i in `find . -name "*.cbl" -type f`; do #for every file with .cbl extension
        cobc -x $i; #build
        cd ../ #back out of dir
    done
    cd ../ #back out of dir
done