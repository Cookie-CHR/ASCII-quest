extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var label = Label.new()
	add_child(label)
	label.add_font_override("font", load("res://Generic/mono_font.tres"))
	label.set_position(Vector2(77,0))
	label.text = str(Inventory.money_print()) + " gp"
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
