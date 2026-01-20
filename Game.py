print(" Game ")

score = 0

print("\nQ1. What is the correct file extension for Python?")
print("a) .pt")
print("b) .p")
print("c) .py")
print("d) .python")

ans1 = input("Enter your answer (a/b/c/d): ")
if ans1 == "c":
    print("Correct ✅")
    score += 1
else:
    print("Wrong ❌")

print("\nQ2. Which keyword is used to define a function in Python?")
print("a) function")
print("b) def")
print("c) fun")
print("d) define")

ans2 = input("Enter your answer (a/b/c/d): ")
if ans2 == "b":
    print("Correct ✅")
    score += 1
else:
    print("Wrong ❌")

print("\nQ3. Which data type is immutable?")
print("a) List")
print("b) Dictionary")
print("c) Tuple")
print("d) Set")

ans3 = input("Enter your answer (a/b/c/d): ")
if ans3 == "c":
    print("Correct ✅")
    score += 1
else:
    print("Wrong ❌")

print("\n===== Quiz Completed =====")
print("Your Score:", score, "/3")