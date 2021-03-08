extends Panel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	get_node("Forest").connect("pressed", self, "change_scn", ["forest"])
	get_node("Tavern").connect("pressed", self, "change_scn", ["tavern"])
	get_node("Castle").connect("pressed", self, "change_scn", ["castle"])
	get_node("Park").connect("pressed", self, "change_scn", ["park"])
	get_node("Lab").connect("pressed", self, "change_scn", ["lab"])
	get_node("Undo").connect("pressed", self, "undo")

func change_scn(dest):
	Time.time_sum(10);
	General.change_scn(Time.path()+Time.time_print("_")+"_"+dest)

func undo():
	General.change_scn(General.prev_sc+".tscn")
