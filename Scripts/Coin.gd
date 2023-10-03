extends Area2D

var collected:bool = false;

func _ready():
	get_node("Sprite").play("Default");

func _on_body_entered(body):
	if(!collected):
		body.scale += Vector2(0.03, -0.01);
		body.get_node("Sprite2D").frame = 1;
		get_node("AudioStreamPlayer2D").play();
		get_node("Sprite").visible = false;
		collected = true;
	
