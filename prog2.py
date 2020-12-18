n = int(input("Enter a Number:"))
if (n == 1 or n == 0):
    print(n ," is not a prime or a composite number")
    exit()
i = 2
flag = 0
while i*i < n:
    if n % i == 0:
        flag = 1
        break
    i = i + 1
if (flag == 0):
    print("The given number is Prime")
else:
    print("The given number is not prime")
