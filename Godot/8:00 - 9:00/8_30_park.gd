extends Panel

func _ready():
	get_node("Listen").connect("pressed", self, "change_scn", [Time.path()+"8_30_park_2"])

func change_scn(dest):
	General.update_prev("Park")
	General.change_scn(dest)