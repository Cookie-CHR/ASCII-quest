extends Label

# Called when the node enters the scene tree for the first time.
func _ready():
	self.text = str(len(General.endings_unlocked))

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
