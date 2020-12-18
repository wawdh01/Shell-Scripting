import os.path
file_name = input("Enter File Name:")
if os.path.isfile(file_name):
    print("File Already Exist...")
    fp = open(file_name, 'a')
    fp.write("Hello World")
else:
    print("File Doesn't Exist")
    fp = open(file_name, 'w')
    fp.write("Hello World")
fp.close()