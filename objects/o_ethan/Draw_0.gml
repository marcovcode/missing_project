// drawing itself
draw_self()

// walking animation
if speed_x > 0 {
	image_xscale = 1
	image_speed = -1
} else if speed_x < 0 {
	image_xscale = -1
	image_speed = -1
} else {
	image_speed = 0
	image_index = 0
}