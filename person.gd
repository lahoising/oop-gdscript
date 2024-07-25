class_name Person extends Node

@export var first_name: String
@export var age: int

func greet():
  print("Hey! My name is %s and I'm %d years old" % [first_name, age])

func _on_area_2d_input_event(_viewport: Node, event: InputEvent, _shape_idx: int):
  if event.is_action_pressed("Greet"):
    greet()
  elif event.is_action_pressed("Shoot"):
    disparar()

func disparar():
  print("pew pew")