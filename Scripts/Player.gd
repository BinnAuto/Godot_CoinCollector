extends CharacterBody2D

var speed:int = 200;

func _physics_process(_delta):
	velocity = Vector2(0, 0);
	if Input.is_key_pressed(KEY_LEFT):
		get_node("Sprite2D").scale.x = -1;
		velocity.x -= 1;
	if Input.is_key_pressed(KEY_RIGHT):
		get_node("Sprite2D").scale.x = 1;
		velocity.x += 1;
	if Input.is_key_pressed(KEY_UP):
		velocity.y -= 1;
	if Input.is_key_pressed(KEY_DOWN):
		velocity.y += 1;
	velocity *= speed;
	move_and_slide()
