extends Control

func _on_BtnRestart_pressed():
	Settings.resetGame()
	get_tree().change_scene("res://MainMenu.tscn")
