extends RigidBody2D
var cena

func _ready():
	cena = get_tree().get_current_scene()
	set_process_input(true)
	
	
func _input(event):
	if event.is_action_pressed("touch"):
		on_touch()
		
func on_touch():
	if cena.estado == cena.JOGANDO: # if scene.state == scene.PLAYING
		apply_impulse(Vector2(0,0), Vector2(0, -1000))
		get_node("SomVoa").play()
	
	
