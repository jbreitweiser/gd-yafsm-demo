extends EditorInspectorPlugin
class_name StateInspector

func _can_handle(object):
	return object is State

func _parse_property(object, type, path, hint, hint_text, usage, wide) -> bool:
	return false
	# Hide all property
	return true
