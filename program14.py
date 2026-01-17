balance = int(input("Enter balance: "))
withdraw = int(input("Enter withdrawal amount: "))

if withdraw <= balance:
    print("Transaction successful")
else:
    print("Insufficient balance")