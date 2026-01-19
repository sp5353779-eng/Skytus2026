class Circle:
    def __init__(self, r):
        self.r = r

    def area(self):
        return 3.14 * self.r * self.r

    def circumference(self):
        return 2 * 3.14 * self.r

c = Circle(7)
print("Area =", c.area())
print("Circumference =", c.circumference())