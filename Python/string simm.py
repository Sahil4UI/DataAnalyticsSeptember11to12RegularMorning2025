data1 = '''abc'''

data2 = ''''''
#TOkenization
#data - tokens
set1 = set(data1.split())
set2 = set(data2.split())
print(len(set1),len(set2))
# import nltk
#Natural Language processing ToolKit
# nltk.download("stopwords")
from nltk.corpus import stopwords
sw = set(stopwords.words("english"))
# print(sw)

set1.difference_update(sw)
set2.difference_update(sw)
print(len(set1),len(set2))

print(len(set1.intersection(set2))/len(set1.union(set2))*100,"%")
