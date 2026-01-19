class Student:
    def __init__(self, marks):
        self.marks = marks

    def average(self):
        return sum(self.marks) / len(self.marks)

s = Student([70, 80, 90])
print("Average =", s.average())