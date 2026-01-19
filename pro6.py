class InvalidAgeError(Exception):
    pass

try:
    age = int(input("Enter age: "))
    if age < 18:
        raise InvalidAgeError
    print("Valid age")
except InvalidAgeError:
    print("Age must be 18 or above")