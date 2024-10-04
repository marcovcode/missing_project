// fixing gui size
window_width = camera_get_view_width(view_camera[0]);
window_height = camera_get_view_height(view_camera[0]);
display_set_gui_size(window_width, window_height);

// creating save file
if not file_exists("save.ini") {
	save_real("Plot", "state", string_to_state("started"))
	save_string("Ethan", "current_room", "r_ethan_bedroom")
}

// spawning ethan
ethan = instance_create_layer(0, 0, "Ethan", o_ethan)

// changing ethan position
if load_string("Ethan", "current_room") = "r_ethan_bedroom" {
	ethan.x = 20
	ethan.y = 90
} else if load_string("Ethan", "current_room") = "r_kitchen" {
	ethan.x = 24
	ethan.y = 90
}

// changing room
room_goto(asset_get_index(load_string("Ethan", "current_room")))