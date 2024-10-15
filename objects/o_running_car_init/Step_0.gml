if o_car.x >= 200 and not is_transitioning {
	// stopping further transitions
	is_transitioning = true

	if load_plot_state() = "talked_with_mom_to_go_to_doll_shop" {
		// saving new state
		save_plot_state("arrived_to_doll_shop")
		
		// warping
		warp(r_doll_shop)
	}
}