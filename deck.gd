extends Node2D

const CARD_SCENE_PATH = "res://Scenes/card.tscn"

var player_deck = ["knight", "knight", "knight"]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.


func draw_card():
	print("player_deck")
	var card_scene = preload(CARD_SCENE_PATH)
	for i in range(player_deck.size()):
		var new_card = card_scene.instantiate()
		$"../CardManager".add_child(new_card)
		new_card.name = "Card"
		$"../PlayerHand".add_card_to_hand(new_card)
