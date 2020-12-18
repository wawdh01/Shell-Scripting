import os.path
file_name = input("Enter FileName:")
if(os.path.isfile(file_name)):
    fp = open(file_name, 'r')
    print("----------------------------------------------------------------------------------------------------------------------------")
    print(fp.read())
    print("----------------------------------------------------------------------------------------------------------------------------")
    fp.close()
else:
    print("File Doesn't Exist")