extends StaticBody2D
@export var npc_data: NpcData

@onready var _collision_shape = $CollisionShape2D
@onready var _animated_sprite = $AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_animated_sprite.speed_scale = npc_data.animation_speed_scale
	_animated_sprite.sprite_frames = npc_data.sprite
	_animated_sprite.play(npc_data.sprite.get_animation_names()[0])
	_collision_shape.shape = npc_data.collision_shape_2d


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
