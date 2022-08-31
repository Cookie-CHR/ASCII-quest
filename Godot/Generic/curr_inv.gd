extends Label


func _ready():
	self_modulate = Color(1,1,1,0.6)
	_inv_print()

func _inv_print():
	var inv = Inventory.inv_print()
	
	for i in range(0, len(inv)):
		var label = Label.new()
		add_child(label)
		label.text = "- "+inv[i]
		label.add_font_override("font", load("res://Generic/mono_font.tres"))
		label.set_position(Vector2(121*(i/3),23*(i%3+1)))
