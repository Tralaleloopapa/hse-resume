#!/bin/bash
set -e

cd cv
pdflatex -interaction=nonstopmode resume.tex
cp resume.pdf ../resume.pdf
