extends Control

@onready var player = $TestEnvironment/CharacterBody3D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	
	if not player.is_on_floor():
		player.velocity += player.get_gravity() * delta
	player.move_and_slide()
