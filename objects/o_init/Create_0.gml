// fixing gui size
window_width = camera_get_view_width(view_camera[0]);
window_height = camera_get_view_height(view_camera[0]);
display_set_gui_size(window_width, window_height);

// creating save file
if not file_exists("save.ini") save_real("Plot", "state", 0)