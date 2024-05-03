extends Area2D

@onready var timer = $Timer
@onready var spawner_label = $Label6

@onready var player = $"../Player"

var mob_path = load("res://scenes/slime.tscn")
var spawncounter = 3 # needs to be one less then the number you want
var triggered = false 

func _on_body_entered(body):
	if triggered == true:
		pass
	else:
		if body != player:
			pass
		else:
			triggered = true
			spawner_label.text = "BETRAYAL MUHAHA!"
			_spawn_mob()
			timer.start()
		
	
func _spawn_mob():
	var new_mob = mob_path.instantiate()
	new_mob.position += Vector2(50, 0)
	add_child(new_mob)


func _on_timer_timeout():
	spawncounter -= 1
	if spawncounter <= 0:
		timer.stop()
	_spawn_mob()

