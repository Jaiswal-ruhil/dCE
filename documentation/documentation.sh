dir=`pwd`/docs2/
projectdir=/0x4bdn
if test "$(ls -A  $dir)"; then
	echo "not empty"
else
	echo "empty"
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
	
fi
echo "Generating program list"
find $projectdir -name "[a-z]*.py" | awk -F "/" '{print $NF}' >filelist.txt
echo "Generating path list"
# find $projectdir -name "[a-z]*.py" | awk -F "/" '{OFS = "/"}{$(NF--)=""; }{print}' >dirlist.txt
echo "removing old ReStructuredText files"
rm -r $dir/*.rst
echo "Generating code.rst"
python3 documentation.py
make -C $dir clean
make -C $dir html
