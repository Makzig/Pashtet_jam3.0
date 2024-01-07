extends CharacterBody3D


@onready var animation_tree: AnimationTree = $AnimationTree
@onready var anim_playback:AnimationNodeStateMachinePlayback = animation_tree.get("parameters/playback")

var gravity = 980.0

const SPEED = 500.0


func _physics_process(_delta: float) -> void:
	movement()
	falling()

func falling() -> void:
	var delta_time:float = get_physics_process_delta_time()
	if !is_on_floor():
		velocity.y -= gravity * delta_time


func movement() -> void:
	var direction = Input.get_vector("move_left", "move_right",  "move_forward" ,"move_back")
	var delta_time:float = get_physics_process_delta_time()
	
	if direction:
		velocity.x = direction.x * SPEED * delta_time
		velocity.z = direction.y * SPEED * delta_time
		rotation.y = Vector2(direction.x , -direction.y).angle() + PI/2
		anim_playback.travel("Move")
	else:
		anim_playback.travel("Idle")
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()

