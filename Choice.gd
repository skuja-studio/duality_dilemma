extends Node2D

export(Texture) var choiceATexture
export(Texture) var choiceBTexture
export(PackedScene) var sceneForChoiceA
export(PackedScene) var sceneForChoiceB
export(PackedScene) var sceneForSilence

var _transitionedToScene: bool = false

func _ready() -> void:
	$CountDownBar.max_value = Settings.choiceTimeInSeconds
	$CountDownBar.value = Settings.choiceTimeInSeconds
	if(choiceATexture != null):
		$ChoiceASprite.texture = choiceATexture
	if(choiceBTexture != null):
		$ChoiceBSprite.texture = choiceBTexture

func _process(delta) -> void:
	if ($CountDownBar.value > 0):
		$CountDownBar.value -= delta
	else:
		_transitionToScene(sceneForSilence)

func _transitionToScene(targetScene:PackedScene) -> void:
	if (!_transitionedToScene):
		_transitionedToScene = true
		if(targetScene):
			get_tree().change_scene_to(targetScene)


func _on_BtnA_pressed():
	_transitionToScene(sceneForChoiceA)


func _on_BtnB_pressed() -> void:
	_transitionToScene(sceneForChoiceB)
