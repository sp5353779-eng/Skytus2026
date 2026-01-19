try:
    f = open("test.txt", "r")
    print(f.read())
except FileNotFoundError:
    print("File not found")
finally:
    print("Program finished")