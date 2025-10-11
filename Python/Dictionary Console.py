Python 3.13.5 (v3.13.5:6cb20a219a8, Jun 11 2025, 12:23:45) [Clang 16.0.0 (clang-1600.0.26.6)] on darwin
Enter "help" below or click "Help" above for more information.
#dictionary
'''Dictionary is python's unordered and mutable data collection.'''
"Dictionary is python's unordered and mutable data collection."
'''Here Key and value are enclosed in {} separated by ,'''
'Here Key and value are enclosed in {} separated by ,'
data = {"roll":101,"name":"amit","p":90,"c":80}
type(data)
<class 'dict'>
data[0]
Traceback (most recent call last):
  File "<pyshell#5>", line 1, in <module>
    data[0]
KeyError: 0
data["roll"]
101
data["cx"]
Traceback (most recent call last):
  File "<pyshell#7>", line 1, in <module>
    data["cx"]
KeyError: 'cx'
data
{'roll': 101, 'name': 'amit', 'p': 90, 'c': 80}
data["p"]
90
data.get("p")
90
data["m"] = 99
data
{'roll': 101, 'name': 'amit', 'p': 90, 'c': 80, 'm': 99}
data['name']="rahul"#key is unique
data
{'roll': 101, 'name': 'rahul', 'p': 90, 'c': 80, 'm': 99}
data.keys()
dict_keys(['roll', 'name', 'p', 'c', 'm'])
data.values()
dict_values([101, 'rahul', 90, 80, 99])
data.items()
dict_items([('roll', 101), ('name', 'rahul'), ('p', 90), ('c', 80), ('m', 99)])
data
{'roll': 101, 'name': 'rahul', 'p': 90, 'c': 80, 'm': 99}
data.popitem()
('m', 99)
#it will remove last key value pair
data
{'roll': 101, 'name': 'rahul', 'p': 90, 'c': 80}
data.pop("c")
80
data
{'roll': 101, 'name': 'rahul', 'p': 90}
del data["c"]
Traceback (most recent call last):
  File "<pyshell#24>", line 1, in <module>
    del data["c"]
KeyError: 'c'
del data["name"]
data
{'roll': 101, 'p': 90}
data.clear()
data
{}
>>> data = {"roll":101,"name":"amit","p":90,"c":80}
>>> len(data)
4
>>> for key in data:
...     print(key)
... 
roll
name
p
c
>>> for key in data:
...     print(key,data[key])
... 
roll 101
name amit
p 90
c 80
>>> 
>>> x = [1,2,3,4,5]
>>> min(x)
1
>>> max(x)
5
>>> sum(x)
15
