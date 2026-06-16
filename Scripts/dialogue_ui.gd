extends CanvasLayer

@onready var dialogue_panel = $DialoguePanel
@onready var npc_name = $DialoguePanel/NPCName
@onready var dialogue_text = $DialoguePanel/DialogueText
@onready var continue_text = $DialoguePanel/ContinueText

func _ready():
	dialogue_panel.hide()

func show_text(name, message):
	npc_name.text = name
	dialogue_text.text = message
	continue_text.text = "[E] Lanjut"

	dialogue_panel.show()

func hide_text():
	dialogue_panel.hide()
