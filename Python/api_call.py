# API - Application Programming Interface - 
# JSON (JavaScript Object Notation)-Python(dictionary)
import urllib.request as url
import json
name = input("Enter Gif to Download : ").replace(" ","+")
path = "https://api.giphy.com/v1/gifs/search?api_key=2mOg5bAoes1fdko7rEOV3O2ogyxbXrhX&q="+name+"&limit=25&offset=0&rating=g&lang=en&bundle=messaging_non_clips"
response = url.urlopen(path)
data = json.load(response)
data = data["data"]
x = 1
for li in data:
    url.urlretrieve(li["images"]["original"]["url"],f"file{x}.gif")
    x+=1
    print(f"{x} files downloaded")