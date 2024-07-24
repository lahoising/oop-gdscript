# Object Oriented Programming (OOP)
Info was take from https://www.geeksforgeeks.org/introduction-of-object-oriented-programming/

## Concept
OOP tries to simulate real life objects by encapsulating data and methods/functions together into “classes”.

For example, consider the following class (written in python)

```python
class Person:
  def __init__(self, name, age):
    self.name = name
    Self.age = age

  def greet(self):
    print("Hello! My name is " + self.name + " and I'm " + self.age + " years old")
```

In here we’re specifying that an object of type Person has 2 properties: name, and age. All objects of type person can also greet, and this greeting uses the object’s attributes.

This is not a python info dump, but for the sake of visualization, this is how you would use it

```python
weon = Person(“Weon”, 14)
weon.greet()
# Hello! My name is Weon and I’m 14 years old

nomms = Person(“No Mames”, 18)
nomms.greet()
# Hello! My name is No Mames and I’m 18 years old
```

## Inheritance
One of the most important concepts of OOP is inheritance. This allows classes to inherit properties and methods from other classes. 

For example, consider the following code:

```python
class Gamer(Person):
  def __init__(self, name, age, tag):
    Person.__init__(self, name, age)
    self.tag = tag 

 def post_tag(self):
    print("I'm " + self.name + " but people call me " + self.tag)
```

This means all objects of type `Gamer` are also of type `Person`. This allows `Gamer` to use all functions and properties defined in `Person`. For example, notice we were able to use `self.name`, even though it was not defined in `Gamer`. That's because `Person` does define this property.

```python
eric = Gamer("Eric", 17, "Forman")
eric.post_tag()
# I'm Eric but people call me Forman
```

## Polymorphism
This happens when we override the logic of a class with something else. For example, consider the following code:

```python
class Student(Person):
  def __init__(self, name, age, graduation_year):
    Person.__init__(self, name, age)
    self.graduation_year = graduation_year

  def greet(self):
    print("My name is " + self.name + " and I will graduate in " + self.graduation_year)
```

In here `Student` inherits `greet` from `Person`, but it overrides its functionality. This will change the output from `Hello! My name is <name> and I'm <age> years old` to `My name is <name> and I will graduate in <graduation_year>` without even changing how we call the function:


```python
student = Student("Stuart", 20, 2025)
student.greet()
# My name is Stuart and I will graduate in 2025
```
