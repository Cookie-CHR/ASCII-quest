extends Panel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
func _init():
	get_node("Text").text = "After some time, the Queen finally makes her appearance. Impeccable as always, she salutes the crowd and begins her speech.\n\"My loyal subjects, you have been called here because a big threat is about to hit our city, and We need the help of each and every one of you to defeat it.\""
	get_node("Image").text = "           |^^|     \n           ('')     \n           \\--/     \n      ____/ )( \\____      _\n|====|    |====|    |====|\n||||||    ||||||    ||||||"
	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
