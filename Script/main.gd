extends Node2D

func _ready():
	var implements = get_node("Views").get_children()
	for i in range(0, implements.size()):
		var imp = implements[i]
		imp.connect("pressed", imp, "set_implement")

func _input(e):
	pass


func adjust_view(new_view):
	get_node()
	pass
	
func pickup_item(item):
	pass
