#!/usr/bin/env bash

dir=`pwd`/docs2/
projectdir=/0x4bdn

rm -r $dir
mkdir $dir

echo "Generating program list"
find $projectdir -name "[a-z]*.py" >all_py_files
grep -v "\.cis" all_py_files >filtered_py_files
awk -F "/" '{print $NF}' filtered_py_files  >filelist.txt

echo " generating the docs "
find $projectdir -name "[a-z]*.py" | awk -F "/" '{OFS = "/"}{$(NF--)=""; }{print}' >dirlist.txt

sphinx-quickstart $dir \
--quiet \
--project="Code Inegration System" \
--author="0x4bdn" \
-v "1.0" \
--release="1.0 beta" \
--language="en" \
--suffix=".rst"  \
--ext-doctest "y" \
--ext-intersphinx "y" \
--ext-autodoc "y" \
--ext-todo "y" \
--ext-coverage "y" \
--ext-viewcode "y" \
--makefile "y"

_content = '
import os
from os.path import split, abspath, join
from sys import path
path.insert(0, abspath('.'))

base_path = split(split(abspath(os.getcwd()))[0])[0]
fp = open(join(base_path, "documentation", "dirlist.txt"), "r")
dir_set=set(fp.read().splitlines())
fp.close()

for dir_path in dir_set:
    path.append(dir_path)
'
echo "${_content}" >> ./docs2/conf.py

echo "Generating code.rst"
python3 documentation.py
make -C $dir clean
make -C $dir html

# remove all temp files
rm all_py_files filtered_py_files
