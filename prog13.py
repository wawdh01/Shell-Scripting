n = input("Enter A String:")
f = len(n)
f = f * -1
n_rev = n[::-1]
if n == n_rev:
    print("The String is Palindrome")
else:
    print("The String is NOT Palindrome")