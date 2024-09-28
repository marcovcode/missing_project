// moving
left_key = keyboard_check(ord("A"))
right_key = keyboard_check(ord("D"))

speed_x = (right_key - left_key) * current_speed * can_move

// colliding
if place_meeting(x + speed_x, y, o_collision) speed_x = 0

x += speed_x