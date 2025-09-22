#Conditional Statements
'''
if - one condition
if else - two conditions
ladder if  - more than 2 condition
nested if
'''

#write a program to check whether the number is even  or odd
'''
x = int(input("Enter No :"))
if not x%2==0:
    print("Odd")
else:
    print("Even")
'''
#Write a program to find largest between two numbers
'''
x = int(input("Enter No1 :"))
y = int(input("Enter No2 :"))
if x>y:
    print(f"{x} is largest")
elif x==y:
    print("both are equal")
else:
    print(f"{y} is largest")
'''    
#Write a program to find largest between three numbers
'''
x = int(input("Enter No1 :"))
y = int(input("Enter No2 :"))
z = int(input("Enter No3 :"))

if x>y and  x>z:
    print(f"{x} is largest")
elif y>z:
    print(f"{y} is largest")
else:
    print(f"{z} is largest")
'''
#Write a program to take 3 sides as input and if they form a traingle
#which traingle is it? equilateral(all sides are equal)
#or isoceles(2 are equal) or scalene(:all different)
x = int(input("Enter Side1 :"))
y = int(input("Enter Side2 :"))
z = int(input("Enter Side3 :"))

#sum of two sides of a traingle is always greator than the third side
if x+y>z and y+z>x and z+x>y:
    if x==y and y==z:
        print("Equilateral Traingle")
    elif x==y or y==z or z==x:
        print("Isoceles Traingle")
    else:
        print("Scalene Traingle")
else:
    print("Invalid Sides")
