#!/bin/sh
ASSIGNMENT_FILE=~/Documents/math2300/latex/hw$1.tex
DATE=$(date +%F)
cp ~/.local/share/latex_template/math_hw.tex $ASSIGNMENT_FILE
sed -i "s/DATE/${DATE}/g" $ASSIGNMENT_FILE
sed -i "s/ASSIGNMENT_NUMBER/${1}/g" $ASSIGNMENT_FILE
