extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	text = "Money: " + Inventory.money_print() + " gp"


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
