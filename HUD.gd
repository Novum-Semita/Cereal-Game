extends CanvasLayer

var cereal = 0

func _ready():
	$FrostiesCereal.text = String(cereal)

func _on_cereal_collected():
	cereal = cereal + 1
	_ready()
