#!/bin/bash
while :
do
    echo "Press [CTRL+C] to stop.."
    xelatex -shell-escape -interaction=nonstopmode ads.tex
    sleep 10
done
