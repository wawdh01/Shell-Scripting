a = float(input("Enter Operand 1:"))
op = input("Enter operator:")
b = float(input("Enter Operand 2:"))
if (op == '+'):
    print("Addition = ", a + b)
elif (op == '-'):
    print("Subtraction = ", a - b)
elif (op == '*'):
    print("Multiplication = ", a*b)
elif (op == '/'):
    if (b == 0):
        print("Division By zero is not possible")
    else:
        print("Division = ", a / b)
elif (op == '^'):
    print ("Power = " , a**b)
else:
    print("Invalid Operator")