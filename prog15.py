import os.path
file_1 = input("Enter 1st FileName:")
file_2 = input("Enter 2nd FileName:")
if(not os.path.isfile(file_1) and not os.path.isfile(file_2)):
    print("File1 & File2 Doesn't Exist")
    exit()
if(not os.path.isfile(file_1)):
    print("File1 Doesn't Exist")
    exit()
if (not os.path.isfile(file_2)):
    print("File2 Doesn't Exist")
    exit()

fp1 = open(file_1, 'r')
fp2 = open(file_2, 'r')
if (fp1.read() == fp2.read()):
    print("The contents of files are same")
else:
    print("The contents of files are NOT same")
fp1.close()
fp2.close()
