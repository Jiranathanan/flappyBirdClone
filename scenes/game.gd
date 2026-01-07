extends Node2D

onready var felpudo = get_node("Felpudo")
onready var timereplay = get_node("TimeToReplay")
onready var label = get_node("Node2D/Control/Label")

var pontos = 0 # Points
var estado = 1 # State

const JOGANDO = 1 # Playing
const PERDENDO = 2 # Losing

func _ready():
	pass

func kill():
	felpudo.apply_impulse(Vector2(0, 0), Vector2(-1000, 0))
	get_node("BackAnim").stop()
	estado = PERDENDO # State = Losing
	timereplay.start()
	
func pontuar(): # score
	pontos += 1 # score += 1
	label.set_text(str(pontos))
	
	

func _on_TimeToReplay_timeout():
	get_tree().reload_current_scene()