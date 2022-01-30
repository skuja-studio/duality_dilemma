extends Node

var choiceTimeInSeconds: float = 60.0
var choiceTimeDecreasePerLevelInSeconds: float = 0.5

var ending: String = ""

func resetGame() -> void:
	ending = ""

func addLineToEnding(line) -> void:
	ending += line + "\n"
