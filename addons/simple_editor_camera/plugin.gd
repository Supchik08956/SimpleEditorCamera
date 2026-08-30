@tool
extends EditorPlugin

const NODE_NAME = "EditorCamera3D"
const INHERITANCE = "Camera3D"
const THE_SCRIPT = preload("res://addons/simple_editor_camera/simple_editor_camera.gd")
const THE_ICON = preload("res://addons/simple_editor_camera/icons/Camera3D.svg")

func _enable_plugin() -> void:
	# Add autoloads here.
	pass


func _disable_plugin() -> void:
	# Remove autoloads here.
	pass


func _enter_tree():
	add_custom_type(NODE_NAME, INHERITANCE, THE_SCRIPT, THE_ICON)

func _exit_tree():
	remove_custom_type(NODE_NAME)
