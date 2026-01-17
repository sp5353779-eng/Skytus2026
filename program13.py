color = input("Enter signal color: ")

if color == "Red":
    print("Stop")
elif color == "Yellow":
    print("Wait")
elif color == "Green":
    print("Go")
else:
    print("Invalid signal")