try:
    email = input("Enter email: ")
    if "@" not in email or "." not in email:
        raise ValueError
    print("Valid email")
except ValueError:
    print("Invalid email format")