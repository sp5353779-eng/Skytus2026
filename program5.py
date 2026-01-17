n = int(input("Enter number: "))
flag = True
if n <= 1:
    flag = False
else:
    for i in range(2, n):
        if n % i == 0:
            flag = False
            break
if flag:
    print("Prime number")
else:
    print("Not a prime number")