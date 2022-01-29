extends Control


export(String, FILE, "*.txt") var dialogueTextFilePath: String = ""

func _ready():
	$ChoiceText.bbcode_text = load_file(dialogueTextFilePath)

# Taken from: https://godotengine.org/qa/57130/how-to-import-and-read-text
func load_file(filePath: String) -> String:
	var file = File.new()
	file.open(filePath, File.READ)
	var result: String = ""
	while not file.eof_reached(): # iterate through all lines until the end of file is reached
		var line = file.get_line()
		result += line
		print(line)
	file.close()
	return result
