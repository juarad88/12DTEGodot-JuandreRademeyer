extends DirectionalLight3D

var sun = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if sun:
		light_energy +=0.1*delta
		if light_energy > 3:
			light_energy = 3
			get_tree().quit()
		light_angular_distance+=0.2 * delta
		if light_angular_distance > 90:
			
			light_angular_distance = 180
			print("Balls")
			get_tree().quit()
			


func _on_timer_timeout():
	sun = true
