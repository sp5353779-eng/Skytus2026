units = int(input("Enter units: "))

if units <= 100:
    bill = units * 2
elif units <= 200:
    bill = units * 3
else:
    bill = units * 5

print("Electricity Bill =", bill)