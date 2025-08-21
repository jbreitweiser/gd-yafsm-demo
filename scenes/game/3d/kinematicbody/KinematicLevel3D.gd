extends  BaseLevel3D
#
#func _ready() -> void:
	#if app_state:
		#app_state.set_trigger("load_done")

func _on_Area_body_entered(body):
	# Victory
	if body is Character3D:
		if app_state:
			app_state.set_param("Game/End/win", true)
			app_state.set_trigger("game_end")

func _on_FallDeathArea_body_entered(body):
	# Game Over
	if body is Character3D:
		if app_state:
			app_state.set_param("Game/End/win", false)
			app_state.set_trigger("game_end")
