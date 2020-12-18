n = int(input("Enter marks:"))
if (n >= 80 and n <= 100):
    print("I Division")
elif (n < 80 and n >= 60):
    print("II Division")
elif (n < 60 and n >= 40):
    print("III Division")
elif (n < 40 and n >= 0):
    print('Fail')
else:
    print('Invalid Marks..')