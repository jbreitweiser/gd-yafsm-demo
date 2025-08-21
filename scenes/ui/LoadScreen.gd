extends "res://scenes/ui/BaseUI.gd"


func _on_LoadTime_timeout():
	print("Timeout")
	if app_state:
		print("Timeout = appstate")
		app_state.set_trigger("load_done")
