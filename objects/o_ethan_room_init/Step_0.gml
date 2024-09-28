if load_string("Plot", "state") = string_to_state("started") {
	// making ethan walk
	if mom_dialogue_trigger.has_dialogue_ended {
		o_ethan.sprite_index = s_kid_ethan_walking
		o_ethan.y = 90
	}
	
	// setting wardrobe dialogue
	inst_wardrobe_dialogue_trigger.dialogue_lines = [
		"You open the wardrobe.",
		"You found a key inside it!"
	]
	
	// saving new state
	if inst_wardrobe_dialogue_trigger.has_dialogue_ended
		save_real("Plot", "state", string_to_state("found_key_in_wardrobe"))
} else {
	inst_wardrobe_dialogue_trigger.dialogue_lines = [
		"You open the wardrobe.",
		"There are your usual\nplain-colored t-shirts."
	]
}