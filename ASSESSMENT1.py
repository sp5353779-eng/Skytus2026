class Car:
    def __init__(self, brand, model, speed):
        self.brand = brand
        self.model = model
        self.speed = speed

    def accelerate(self):
        self.speed += 10

    def brake(self):
        self.speed -= 10
c = Car("Honda", "City", 50)
c.accelerate()
c.brake()
print(c.brand, c.model, c.speed)