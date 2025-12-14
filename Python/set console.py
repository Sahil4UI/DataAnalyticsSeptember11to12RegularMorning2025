Python 3.14.0 (v3.14.0:ebf955df7a8, Oct  7 2025, 08:20:14) [Clang 16.0.0 (clang-1600.0.26.6)] on darwin
Enter "help" below or click "Help" above for more information.
#set
x = {1,2,3,4,5}
y = {3,4,5,6,7}
len(x)
5
z = {1,2}
z.add(12)
z
{1, 2, 12}
z.discard(12)
z
{1, 2}
z.pop()#random remove
1
x
{1, 2, 3, 4, 5}
y
{3, 4, 5, 6, 7}
x.intersection(y)
{3, 4, 5}
#MYSQL - INNER JOIN
x
{1, 2, 3, 4, 5}
y
{3, 4, 5, 6, 7}
x.difference(y)
{1, 2}
y.difference(x)
{6, 7}
x.union(y)#all but without rep
{1, 2, 3, 4, 5, 6, 7}
z = {1,1,1,2,2,2,3,3,4,4,5,5,5,5}
z
{1, 2, 3, 4, 5}
x
{1, 2, 3, 4, 5}
y
{3, 4, 5, 6, 7}
x = {1,2,3,4,5,6,7}
>>> y = {3,4,5}
>>> y.issubset(x)
True
>>> x.superset(y)
Traceback (most recent call last):
  File "<pyshell#26>", line 1, in <module>
    x.superset(y)
AttributeError: 'set' object has no attribute 'superset'. Did you mean: 'issuperset'?
>>> x.issuperset(y)
True
