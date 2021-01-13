extends Node2D
#res://Troops/Infantry/MilitiaSpear.gd

var infantry = []
var ranged = []
var cavalry = []
var siege = []

var unl_Inf = []
var unl_Ran = []
var unl_Cav = []
var unl_Sie = []
var money = 0
var strength = 0
var territory = 0

# Called when the node enters the scene tree for the first time.
	
func _ready():
	# loop through infantry and add them to the infantry array	
	unlock_defaults()
	add_defaults()
	
	pass # Replace with function body.

func unlock_defaults():
	unl_Inf.append(get_child(0).get_child(0))
	unl_Inf.append(get_child(0).get_child(1))
	unl_Ran.append("Militia Archer")
	unl_Cav.append("Militia Cavalry")
	unl_Sie.append("Militia Torchers")

func add_defaults():
	for type_num in range(get_child_count()):
		for troop in get_child(type_num).get_children():
			infantry.append(troop)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
