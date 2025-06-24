#!/bin/bash
set -e

cd cv
pdflatex -interaction=nonstopmode resume.tex
