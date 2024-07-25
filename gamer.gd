# -------------------
# INHERITANCE
# Aqui la clase Gamer inherits from Person, lo cual significa que
# Gamer adquiere todas las propiedades y funcione de Person.
# Esto ayuda a reducir la duplicacion de codigo. Si estas haciendo mucho
# copy paste, that's a good indication you should look for ways to abstract
# logic, y el inheritance is a way to do that. See NOTES 1 for a warning
# -------------------
class_name Gamer extends Person

@export var gamer_tag: String

func post_tag():
  # Aqui estamos usando la variable first_name, la cual no fue definida en gamer,
  # pero la podes usar porque we inherit esa variable de nuestro parent class (Person)
  print("I'm %s, but people call me %s" % [first_name, gamer_tag])

# ---------------------------------------
# POLYMORPHISM
# Se refiere a override the logic from our parent class.
#
# En este ejemplo estamos overriding la logica de _on_area_2d_input_event.
# En Person esta funcion solo reaccion a la accion de "Greet", pero aqui
# estamos diciendo que debemos hacer todo lo que hace Person en esa funcion
# (al llamar `super`), pero ademas de eso debemos reaccionar a la accion
# de Tag
# ---------------------------------------
func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int):
  super(viewport, event, shape_idx)
  if event.is_action_pressed("Tag"):
    post_tag()

# -----------------------------
# NOTES:
# 1. Be careful with inheritance. Too much of it can lead to complicated problems.
#    See https://www.quora.com/In-OOP-how-much-inheritance-is-too-much-inheritance.
#    To get around that you can use data composition and functional programming.
#    For more info on data composition see https://stackify.com/oop-concepts-composition/
#    For more info on functinal programming see https://www.geeksforgeeks.org/functional-programming-paradigm/
# -----------------------------
