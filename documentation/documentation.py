#!/usr/bin/python3
import os
prog_list=os.path.join(os.path.abspath(os.getcwd()),"filelist.txt")
with open(prog_list,"r") as prog_list_file:
    prog_list=prog_list_file.read().strip().split()
    
    # get index.rst template and insert program names
    templ_file=os.path.join(os.path.abspath(os.getcwd()),"index_template.txt")
    with open(templ_file,"r") as index_file:
        lines=index_file.readlines()
        insert=[]
        prog_set=set()
        for prog in prog_list:
            prog_set.add('   '+prog.split('.')[0]+"\n")
        res=lines[:13]+list(prog_set)+lines[13:]
        index_file_name=os.path.join(os.path.abspath(os.getcwd()),"docs2","index.rst")
        with open(index_file_name,"w") as output_file:
            for line in res:
                output_file.write(line)

    # create .rst files for each program
    for prog in prog_list:
        file_name=prog.split('.')[0]+".rst"
        out_file=os.path.join(os.path.abspath(os.getcwd()),"docs2",file_name)
        with open(out_file,"w") as output_file:
            output_file.write(str(prog.split('.')[0])+"\n")
            output_file.write("==================\n\n")
            output_file.write(".. automodule:: "+prog.split('.')[0]+"\n")
            output_file.write("   :members:\n")
    