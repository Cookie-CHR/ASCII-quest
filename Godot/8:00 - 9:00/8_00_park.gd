extends Panel

func _ready():
	
	get_node("Go").connect("pressed", self, "change_scn", ["Generic_travel", 0])
	get_node("Wait").connect("pressed", self, "change_scn", [str(self.name), 30])

func change_scn(dest, minutes):
	General.update_prev("Park")
	General.change_scn(dest, minutes)
