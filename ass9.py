num = int(input("Enter a number: "))

if num > 0 and num % 2 == 0:
    print("Number is Positive and Even")

elif num > 0 or num % 2 == 0:
    print("Number is either Positive or Even")

else:
    print("Number is neither Positive nor Even")