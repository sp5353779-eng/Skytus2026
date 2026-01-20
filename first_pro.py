todo_list = []

while True:
    print("\n===== TO-DO LIST MENU =====")
    print("1. Add Task")
    print("2. View Tasks")
    print("3. Delete Task")
    print("4. Exit")

    choice = input("Enter your choice (1-4): ")

    if choice == "1":
        task = input("Enter task: ")
        todo_list.append(task)
        print("Task added successfully ✅")

    elif choice == "2":
        if not todo_list:
            print("No tasks available ❌")
        else:
            print("\nYour Tasks:")
            for i, task in enumerate(todo_list, start=1):
                print(i, ".", task)

    elif choice == "3":
        if not todo_list:
            print("No tasks to delete ❌")
        else:
            task_no = int(input("Enter task number to delete: "))
            if 1 <= task_no <= len(todo_list):
                removed = todo_list.pop(task_no - 1)
                print("Task removed:", removed)
            else:
                print("Invalid task number ❌")

    elif choice == "4":
        print("Exiting To-Do List. Bye 👋")
        break

    else:
        print("Invalid choice ❌ Please try again")