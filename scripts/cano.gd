extends Node2D
export var vel = -400
var cena

func _ready():
	cena = get_tree().get_current_scene()
	set_process(true)
	
func _process(delta):
	if cena.estado == cena.JOGANDO: # if scene.state == scene.PLAYING
		set_pos(get_pos() + Vector2(vel * delta, 0))
	
	if get_pos().x < -100:
		print("Destroyed")
		queue_free()
		


func _on_Area2D_body_enter( body ):
	if body.get_name() == "Felpudo":
		cena.kill()
