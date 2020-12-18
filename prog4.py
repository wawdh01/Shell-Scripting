import math
radius = float(input("Enter the Radius of circle:"))
if radius < 0:
    print("Radius Cannot be Negative")
else:   
    circumference = 2 * math.pi * radius
    print("Circumference of the circle = ", circumference, " units")
    area = math.pi * radius * radius
    print("The area of the circle = ", area, " units")