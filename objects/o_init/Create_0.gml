// fixing gui size
window_width = camera_get_view_width(view_camera[0]);
window_height = camera_get_view_height(view_camera[0]);
display_set_gui_size(window_width, window_height);

// creating save file
if not file_exists("save.ini") save_plot_state("started")

// spawning ethan
instance_create_layer(0, 0, "Ethan", o_ethan)

// changing room
if load_plot_state() = "started" or load_plot_state() = "found_key_in_ethans_bedroom" room_goto(r_ethans_bedroom)
else if load_plot_state() = "opened_door_in_ethans_bedroom" room_goto(r_livingroom)
else if load_plot_state() = "talked_with_mom_to_go_to_doll_shop" room_goto(r_running_car)
else if load_plot_state() = "arrived_at_doll_shop" or load_plot_state() = "asked_to_choose_a_doll_in_doll_shop" room_goto(r_doll_shop)