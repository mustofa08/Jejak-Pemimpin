extends Node2D

var player_near = false
var quest_sudah_diambil = false

@onready var interaction_label = $InteractionLabel

func _ready():
	print("PAK BUDI READY")

	interaction_label.hide()

	$Area2D.body_entered.connect(_on_body_entered)
	$Area2D.body_exited.connect(_on_body_exited)

func _process(_delta):
	if player_near and Input.is_action_just_pressed("interact"):

		var dialog_ui = get_tree().current_scene.get_node("DialogueUI")
		var gm = get_tree().current_scene.get_node("GameManager")

		if not quest_sudah_diambil:

			quest_sudah_diambil = true

			dialog_ui.show_text(
				"Pak Budi",
				"Jalan depan rumah saya rusak. Tolong bantu perbaiki ya."
			)

			gm.tambah_tugas(
				"jalan_pak_budi",
				"Perbaiki Jalan Pak Budi",
				gm.hari + 3,
				"keluarga"
			)

			gm.reputasi_keluarga += 1

		else:

			dialog_ui.show_text(
				"Pak Budi",
				"Bagaimana perkembangan perbaikan jalan?"
			)

func _on_body_entered(body):
	print("MASUK:", body.name)

	if body.name == "Player":
		player_near = true
		interaction_label.show()

func _on_body_exited(body):
	print("KELUAR:", body.name)

	if body.name == "Player":
		player_near = false

		interaction_label.hide()

		var dialog_ui = get_tree().current_scene.get_node("DialogueUI")
		dialog_ui.hide_text()
