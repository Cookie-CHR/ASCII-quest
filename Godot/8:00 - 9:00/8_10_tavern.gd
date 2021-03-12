extends Panel


func _ready():
	get_node("Go").connect("pressed", self, "change_scn", ["/Generic/Generic_travel"])

func change_scn(dest):
	General.update_prev("Tavern")
	General.change_scn(dest)
