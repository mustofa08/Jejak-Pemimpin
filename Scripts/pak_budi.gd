extends Node2D

var player_near = false

func _ready():
	print("PAK BUDI READY")

	$Area2D.body_entered.connect(_on_body_entered)
	$Area2D.body_exited.connect(_on_body_exited)

func _process(_delta):
	if player_near:
		print("PLAYER DEKAT")

	if player_near and Input.is_action_just_pressed("interact"):
		print("E DITEKAN")

		var dialog_ui = get_tree().current_scene.get_node("DialogueUI")
		print("DIALOG UI:", dialog_ui)

		dialog_ui.show_text("Pak Budi: Jalan depan rumah saya rusak.")

func _on_body_entered(body):
	print("MASUK:", body.name)

	if body.name == "Player":
		player_near = true

func _on_body_exited(body):
	print("KELUAR:", body.name)

	if body.name == "Player":
		player_near = false

		var dialog_ui = get_tree().current_scene.get_node("DialogueUI")
		dialog_ui.hide_text()
