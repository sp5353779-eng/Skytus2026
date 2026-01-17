n = int(input("Enter number: "))
count = 0
while n > 0:
    count += 1
    n = n // 10
print("Total digits =", count)