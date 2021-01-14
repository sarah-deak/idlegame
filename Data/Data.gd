extends Node2D
#res://Troops/Infantry/MilitiaSpear.gd

var infantry = []
var ranged = []
var mounted = []
var siege = []

var unl_Inf = []
var unl_Ran = []
var unl_Cav = []
var unl_Sie = []
var money = 50000
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


func add_defaults():
	for troop in get_child(0).get_children():
		infantry.append(troop)
	for troop in get_child(1).get_children():
		ranged.append(troop)
	for troop in get_child(2).get_children():
		mounted.append(troop)
	for troop in get_child(3).get_children():
		siege.append(troop)


func unlock_ranged():
	var num_ranged = len(unl_Ran)
	unl_Ran = []
	for x in range(num_ranged + 1):
		unl_Ran.append(ranged[x])

func unlock_mounted():
	var num_cav = len(unl_Cav)
	unl_Cav = []
	for x in range(num_cav + 1):
		unl_Cav.append(mounted[x])

func unlock_siege():
	var num_siege = len(unl_Sie)
	unl_Sie = []
	for x in range(num_siege + 1):
		unl_Sie.append(siege[x])





# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
