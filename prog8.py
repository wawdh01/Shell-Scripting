n = float(input("Enter Marks:"))
if (80 <= n <= 100):
    f = 1
elif (60 <= n < 80):
    f = 2
elif (40 <= n < 60):
    f = 3
elif (0 <= n < 40):
    f = 4
else:
    f = 5
switcher = {
    1 : "DIvision-I",
    2 : "Division-II",
    3 : "Division-III",
    4 : "Fail",
    5 : "Invalid Marks"
}

print(switcher[f])
