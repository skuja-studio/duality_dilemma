extends Node2D

export(Texture) var choiceATexture
export(Texture) var choiceBTexture

func _ready():
	$CountDownBar.max_value = Settings.choiceTimeInSeconds
	$CountDownBar.value = Settings.choiceTimeInSeconds
	if(choiceATexture != null):
		$ChoiceASprite.texture = choiceATexture
	if(choiceBTexture != null):
		$ChoiceBSprite.texture = choiceBTexture

func _process(delta):
	if ($CountDownBar.value > 0):
		$CountDownBar.value -= delta
