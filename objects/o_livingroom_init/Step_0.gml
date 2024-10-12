if inst_mom_dialogue_trigger.has_dialogue_ended and not is_transitioning {
	// saving plot state
	save_plot_state("talked_with_mom_to_go_to_doll_shop")
	
	// warping
	is_transitioning = true
	warp(r_running_car)
}