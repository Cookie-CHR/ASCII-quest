extends Label
# Called when the node enters the scene tree for the first time.
func _ready():
	var label = Label.new()
	add_child(label)
	label.add_font_override("font", load("res://Generic/mono_font.tres"))
	label.set_position(Vector2(154,0))
	if Time.h < 24:
		label.text = Time.time_print(":")
	else:
		label.text = "Watch broke"
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
