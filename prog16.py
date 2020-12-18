n = int(input("Enter Number of rows:"))
i = 0
for i in range(0, n):
    for j in range(1, n - i):
        print(end=' ')
    for j in range(-i, i+1):
        if (j < 0):
            f = -j
        else:
            f = j
        print(f, end='')
    print()