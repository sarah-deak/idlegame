extends Node2D



# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $TroopBox/InfantryPanel.troop_selected == null:
		pass
	Data.money += ($TroopBox/InfantryPanel.troop_selected.count * .25 * delta)
	$ResourcePanel.UpdateUI()
	
	pass


func _on_MenuButton_pressed():
	get_tree().change_scene("res://MainMenu.tscn")
	pass # Replace with function body.



func _on_infantry_popup_ready():
	
	pass # Replace with function body.
