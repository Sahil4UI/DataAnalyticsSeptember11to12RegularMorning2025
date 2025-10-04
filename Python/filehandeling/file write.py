# data = "hello Welcome to File handeling...."
# with open("abc.txt","w") as file:
#     file.write(data)

data = ["hello\n","welcome to Python\n","Python is a high level language\n"]
with open("abc.txt","w") as file:
    file.writelines(data)
