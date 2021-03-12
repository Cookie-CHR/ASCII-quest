extends Panel

# Called when the node enters the scene tree for the first time.
func _ready():
	place_buttons()
	
	for child in get_children():
		if child is Button:
			get_node(child.name).connect("pressed", self, "guess_scn", [child.name, 10])

func place_buttons():
	get_node("Undo").set_position(Vector2(36,508))
	get_node(General.curr_sc).hide() #Curr e non prev
	if General.prev_sc == "Lab":
		return
	get_node("Lab").set_position(Vector2(36,482))
	if General.prev_sc =="Park":
		return
	get_node("Park").set_position(Vector2(36,459))
	if General.prev_sc =="Castle":
		return
	get_node("Castle").set_position(Vector2(36,436))
	if General.prev_sc =="Tavern":
		return
	get_node("Tavern").set_position(Vector2(36,413))
	
func guess_scn(dest, minutes):
	dest = General.guess_scn(dest, minutes)
	General.change_scn(dest, 0)

func undo():
	var dest = General.guess_scn(General.prev_sc, 0)
	General.change_scn(dest, 0)
