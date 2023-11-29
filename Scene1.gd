extends Node

var text_box = preload("res://text_box.tscn")

var frieren
var control
var hopper 
#onready var timer = $Node2D/pop_timer
var pop_timer
var bounce_rate
# Called when the node enters the scene tree for the first time.
func _ready():
	frieren = get_node("Node2D/Frieren")
	control = get_node("Control")
	control.add_child(text_box.instantiate())
	pop_timer = $Node2D/pop_timer
	bounce_rate = 0.5
	hopper = true
	pop_timer.start()
	
	
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if hopper == true:
		frieren.position.y -= bounce_rate
		#frieren.position.x -= 1
		
	if hopper == false:
		frieren.position.y += bounce_rate
		#frieren.position.x -= 1
		
	


func _on_quit_pressed():
	get_tree().change_scene_to_file("res://MainMenu.tscn")


func _on_pop_timer_timeout():
	print("timeout")
	if hopper == true:
		
		#frieren.position.x -= 1
		hopper = false
		
	else:
		
		#frieren.position.x -= 1
		hopper = true
