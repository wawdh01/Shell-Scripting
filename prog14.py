n = int(input("Enter Number:"))
i = 1
fact = 1
while (i != n+1):
    fact = fact * i
    i = i + 1
print("The factorial of " + str(n) + " is " + str(fact))