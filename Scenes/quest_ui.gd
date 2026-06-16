extends CanvasLayer

@onready var panel = $QuestPanel
@onready var label = $QuestPanel/Label

func _process(_delta):
	var gm = get_parent().get_node("GameManager")

	var text = "QUEST AKTIF\n\n"

	if gm.tugas_aktif.is_empty():
		text += "Belum ada tugas"
	else:
		for tugas in gm.tugas_aktif:
			text += "☐ " + tugas["nama"] + "\n"

	if label.text != text:
		label.text = text

		await get_tree().process_frame

		panel.size.y = label.size.y + 20
