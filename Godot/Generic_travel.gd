extends Panel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	place_buttons()
	
	get_node("Forest").connect("pressed", self, "guess_scn", ["forest"])
	get_node("Tavern").connect("pressed", self, "guess_scn", ["tavern"])
	get_node("Castle").connect("pressed", self, "guess_scn", ["castle"])
	get_node("Park").connect("pressed", self, "guess_scn", ["park"])
	get_node("Lab").connect("pressed", self, "guess_scn", ["lab"])
	get_node("Undo").connect("pressed", self, "undo")

func place_buttons():
	get_node("Undo").set_position(Vector2(36,508))
	if General.prev_sc == "Lab":
		get_node("Lab").hide()
		return
	get_node("Lab").set_position(Vector2(36,482))
	if General.prev_sc =="Park":
		get_node("Park").hide()
		return
	get_node("Park").set_position(Vector2(36,459))
	if General.prev_sc =="Castle":
		get_node("Castle").hide()
		return
	get_node("Castle").set_position(Vector2(36,436))
	if General.prev_sc =="Tavern":
		get_node("Tavern").hide()
		return
	get_node("Tavern").set_position(Vector2(36,413))
	if General.prev_sc == "Forest":
		get_node("Forest").hide()
	
func guess_scn(dest):
	Time.time_sum(10);
	dest = General.guess_scn(dest)
	General.change_scn(dest)

func undo():
	General.guess_scn(General.prev_sc)
