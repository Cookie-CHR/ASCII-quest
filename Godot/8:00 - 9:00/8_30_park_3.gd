extends Panel

func _ready():
	get_node("Listen").connect("pressed", self, "change_scn", Time.path()+"8_30_park_4")

func change_scn(dest):
	General.change_scn(dest)
