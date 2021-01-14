extends Node2D



# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $TroopBox/InfantryPanel.troop_selected == null:
		pass
	
	var curr_inf = $TroopBox/InfantryPanel.troop_selected
	var curr_ranged = $TroopBox/RangedPanel.troop_selected
	var curr_mounted = $TroopBox/MountedPanel.troop_selected
	var curr_siege = $TroopBox/SiegePanel.troop_selected
	if (curr_inf): Data.money += (curr_inf.count * .25 * delta * curr_inf.mult)
	if (curr_ranged): Data.money += (curr_ranged.count * .33 * delta * curr_ranged.mult)
	if (curr_mounted): Data.money += (curr_mounted.count * .45 * delta * curr_mounted.mult)
	if (curr_siege): Data.money += (curr_siege.count * .67 * delta * curr_siege.mult)
	$ResourcePanel.UpdateUI()
	
	pass


func _on_MenuButton_pressed():
	get_tree().change_scene("res://MainMenu.tscn")
	pass # Replace with function body.



func _on_infantry_popup_ready():
	
	pass # Replace with function body.
