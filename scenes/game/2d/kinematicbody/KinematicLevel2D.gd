extends BaseLevel2D

func _ready() -> void:
	if app_state:
		app_state.set_trigger("load_done")

func _on_Area2D_body_entered(body):
	if body is GameCharacter2D:
		if app_state:
			app_state.set_param("Game/End/win", true)
			app_state.set_trigger("game_end")

func _on_FallDeathArea2D_body_entered(body):
	if body is GameCharacter2D:
		if app_state:
			app_state.set_param("Game/End/win", false)
			app_state.set_trigger("game_end")
