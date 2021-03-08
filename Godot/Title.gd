extends Panel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	get_node("Play").connect("pressed", self, "change_scn", [Time.path()+"8_00_park"])
	get_node("Credits").connect("pressed", self, "change_scn", ["Credits"])

func change_scn(dest):
	General.change_scn(dest)



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
