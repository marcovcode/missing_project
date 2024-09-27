left_key = keyboard_check(ord("A"))
right_key = keyboard_check(ord("D"))

speed_x = (right_key - left_key) * current_speed * can_move

x += speed_x