extends Panel
func _ready():
	
	get_node("Back").connect("pressed", self, "change_scn", ["Title"])

func change_scn(dest):
	General.change_scn(dest)
