interact_key_pressed = keyboard_check_pressed(ord("E"))

if place_meeting(x, y, o_ethan) and enabled and interact_key_pressed {
	o_ethan.x = target_x
	o_ethan.y = target_y
	room_goto(target_room)
}