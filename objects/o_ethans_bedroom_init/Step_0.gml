if load_plot_state() = "started" {	
	// setting locked door dialogue
	if not inst_door_dialogue_trigger.is_talking
		inst_door_dialogue_trigger.dialogue_lines = [
			"The door is locked.",
		]

	// setting key in wardrobe dialogue
	if not inst_wardrobe_dialogue_trigger.is_talking
		inst_wardrobe_dialogue_trigger.dialogue_lines = [
			"You open the wardrobe.",
			"You found a key inside it!"
		]

	// making Ethan walk
	if mom_dialogue_trigger.has_dialogue_ended {
		o_ethan.sprite_index = s_kid_ethan_walking
		o_ethan.y = 90
	}

	// removing door ended state
	inst_door_dialogue_trigger.has_dialogue_ended = false

	// saving found key state
	if inst_wardrobe_dialogue_trigger.has_dialogue_ended
		save_plot_state("found_key_in_ethans_bedroom")
} else if load_plot_state() = "found_key_in_ethans_bedroom" {
	// setting no key in wardrobe dialogue
	if not inst_wardrobe_dialogue_trigger.is_talking
		inst_wardrobe_dialogue_trigger.dialogue_lines = [
			"You open the wardrobe.",
			"There are your usual\nplain-colored t-shirts."
		]

	// setting open door dialogue
	if not inst_door_dialogue_trigger.is_talking
		inst_door_dialogue_trigger.dialogue_lines = [
			"You open the door.",
		]

	// saving open door plot state
	if inst_door_dialogue_trigger.has_dialogue_ended {
		warp(r_livingroom)
		save_plot_state("opened_door_in_ethans_bedroom")
	}
}