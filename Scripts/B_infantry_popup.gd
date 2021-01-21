extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _pressed():
	$troop_popup.popup()
#	$troop_popup.set_position(get_parent().get_parent().get_position() + get_parent().get_position() + get_position())
#	$troop_popup.set_position($troop_popup.get_position() + Vector2(50,0) )

	$troop_popup.set_position(get_global_transform().origin + Vector2(60,0))
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
