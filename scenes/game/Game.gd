extends BaseGame

@export var load_sreen_scn: PackedScene
@export var pause_menu_scn: PackedScene
@export var game_end_screen_scns: PackedScene

var load_screen_instance
var pause_menu_instance
var game_end_screen_instance
var current_level_instance


func setup_level():
	if app_state:
		var level_scn = app_state.get_param("Game/level_scn")
		var last_level = app_state.get_param("last_level")
		if level_scn:
			# New level instance
			current_level_instance = level_scn.instantiate()
			app_state.erase_param("Game/level_scn")
			if last_level:
				app_state.erase_param("last_level", false) # Remove last level, since we're starting new level
				last_level.queue_free() # IMPORTANT: Must be freed, otherwise it will cause memory leak
		else:
			# Restore last played level
			current_level_instance = last_level
		if current_level_instance:
			current_level_instance.set("app_state", app_state)
			add_child(current_level_instance)

func _unhandled_key_input(event):
	if event.is_action_pressed("ui_cancel"):
		if app_state:
			app_state.set_trigger("pause")
