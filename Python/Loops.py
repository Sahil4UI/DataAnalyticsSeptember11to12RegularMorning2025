Python 3.13.5 (v3.13.5:6cb20a219a8, Jun 11 2025, 12:23:45) [Clang 16.0.0 (clang-1600.0.26.6)] on darwin
Enter "help" below or click "Help" above for more information.
#Loop-repetition
for i in range(1,11):#ending - n-1
    print(i)

1
2
3
4
5
6
7
8
9
10

for i in range(1,11,1):
    print(i)

1
2
3
4
5
6
7
8
9
10
>>> for i in range(1,11,2):
...     print(i)
... 
1
3
5
7
9
>>> #range  -  min to max - ending n-1 , adjust n+1
>>> #range - max to min  - ending n+1, adjust n-1
>>> for i in range(10,,):
...     
SyntaxError: invalid syntax
>>> for i in range(10,0,-1):
...     print(i)
... 
10
9
8
7
6
5
4
3
2
1
for i in reversed(range(1,11)):
    print(i)

10
9
8
7
6
5
4
3
2
1

#break
#break is used to exit the current loop iteration
for i in range(1,10000000000000):
    print(i)
    if i==5:
        break

1
2
3
4
5
#continue
for i in range(1,11):
    if i%2==0:
        continue
    print(i)

1
3
5
7
9
#continue is used to skip the current iteration
for i in range(1,6):
    print(i)

1
2
3
4
5
#
i=1
while i<=6:
    print(i)
    i=i+1

1
2
3
4
5
6

i=1
while i<=6:
    print(i)
    i=i+2
    
SyntaxError: multiple statements found while compiling a single statement
i=1
while i<=6:
    print(i)
    i=i+2

1
3
5
i=1
while i<6:
    print(i)

1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1Traceback (most recent call last):
  File "<pyshell#49>", line 2, in <module>
    print(i)
KeyboardInterrupt
#HOMEWORK
'''
wap to find the sum of first 10 natural numbers

wap to find the sum of digits of a given number - 256 - 2+5+6 -13

wap to find the reverse of number  - 123 - 321

wap to print first 10 numbers of fibonacci series
0 1 1 2 3 5 8...
'''
'\nwap to find the sum of first 10 natural numbers\n\nwap to find the sum of digits of a given number - 256 - 2+5+6 -13\n\nwap to find the reverse of number  - 123 - 321\n\nwap to print first 10 numbers of fibonacci series\n0 1 1 2 3 5 8...\n'
