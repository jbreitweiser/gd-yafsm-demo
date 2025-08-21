extends BaseUI


func _on_LoadTime_timeout():
	if app_state:
		app_state.set_trigger("load_done")
