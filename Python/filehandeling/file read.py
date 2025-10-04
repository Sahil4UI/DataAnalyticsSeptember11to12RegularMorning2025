with open("abc.txt") as file:
    # data = file.read()
    # print(data)

    # data = file.read(3)
    # print(data)

    # it will read the first line
    # data = file.readline()
    # print(data)

    data = file.readlines()
    print(data[-1])
    # for line in data:
    #     print(line)