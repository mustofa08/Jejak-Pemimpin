extends CanvasLayer

@onready var text_label = $DialogueText

func _enter_tree():
	print("DIALOGUE ENTER TREE")

func _ready():
	print("DIALOGUE READY")
	print("LABEL:", text_label)

	text_label.visible = true
	text_label.text = "TEST DARI READY"

func show_text(message):
	print("SHOW TEXT DIPANGGIL")

	text_label.text = message
	text_label.visible = true

func hide_text():
	text_label.visible = false
