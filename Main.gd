extends Node

@export var splash_screen_scn: PackedScene
@export var start_screen_scn: PackedScene
@export var main_menu_scn: PackedScene
@export var level_select_scn: PackedScene
@export var game_scn: PackedScene
@export var game_end_scn: PackedScene

@onready var app_state: StateMachinePlayer = $AppState
