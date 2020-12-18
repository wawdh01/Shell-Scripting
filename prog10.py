import os
dir_name = input("Enter Directory Name:")
if (os.path.isdir(dir_name)):
    print("Directory already Exist.....")
else:
    cur_dir = os.getcwd()
    cur_dir = cur_dir + "/" + dir_name
    os.mkdir(cur_dir)
