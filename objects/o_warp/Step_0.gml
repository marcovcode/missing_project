interact_key_pressed = keyboard_check_pressed(ord("E"))

if place_meeting(x, y, o_ethan) and enabled and interact_key_pressed {
	var transition = instance_create_layer(0, 0, "Utilities", o_transition)
	transition.target_x = target_x
	transition.target_y = target_y
	transition.target_room = target_room
}