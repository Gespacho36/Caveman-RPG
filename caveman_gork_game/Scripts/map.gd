extends Node2D


func _on_t_rex_body_entered(body: Node2D) -> void:
	if body.name == "Gork":
		#Here is how we will change scenes. 
		#We will be making a global (autoload) 'moving' variable that will be 
		#false here so that Gork can't move after touching the t-rex. 
		get_tree().change_scene_to_file("res://Scenes/battle_scene.tscn")
