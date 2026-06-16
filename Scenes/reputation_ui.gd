extends CanvasLayer

@onready var label = $ReputationPanel/Label

func _process(_delta):
	var gm = get_parent().get_node("GameManager")

	label.text = """Hari %d / 14

Pemuda   : %d
Keluarga : %d
Agama    : %d
Sesepuh  : %d""" % [
		gm.hari,
		gm.reputasi_pemuda,
		gm.reputasi_keluarga,
		gm.reputasi_agama,
		gm.reputasi_sesepuh
	]
