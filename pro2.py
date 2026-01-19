try:
    n = int(input("Enter integer: "))
    print("You entered:", n)
except ValueError:
    print("Invalid integer input")