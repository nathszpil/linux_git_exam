#!/bin/bash
grep -o -i "function" README.md | wc -l > output/function-keyword-count.txt
grep -o "^# .*" README.md | sed "s/^# //" | sort -u > output/unique-headers.txt
grep -oE "[0-9]+" README.md | sort -n > output/sorted-numbers.txt
grep -i "Calculator" README.md | sort -r > output/calculator-lines.txt
awk "/# FEATURES/{f=1;next}/#/{f=0}f" README.md | tr '\n' ' '  > output/features-summary.txt
cat output/*
