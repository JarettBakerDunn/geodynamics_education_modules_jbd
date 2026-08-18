#!/bin/bash
> config.txt
echo "" >> config.txt
echo "-------------ASPECT & DEAL.II VERSIONS-------------" >> config.txt
! aspect-release --version | grep version | cut -d' ' -f 7,8,9,10 >> config.txt
! aspect-release --version | grep deal.II | cut -d' ' -f 7,8,9 >> config.txt

echo "" >> config.txt
echo "-------------PIP VERSION-------------" >> config.txt
pip --version >> config.txt

echo "" >> config.txt
echo "-------------JUPYTERLAB VERSION-------------" >> config.txt
pip show jupyterlab | grep Version  >> config.txt

echo "" >> config.txt
echo "-------------PYVISTA VERSION-------------" >> config.txt
pip show pyvista | grep Version  >> config.txt

echo "" >> config.txt
echo "-------------ALL PIP PACKAGE VERSIONS-------------" >> config.txt
pip list >> config.txt
