try:
    a = int(input("Enter number: "))
    b = int(input("Enter number: "))
    print(a / b)
except Exception as e:
    f = open("error.txt", "w")
    f.write(str(e))
    f.close()
    print("Error logged to file")