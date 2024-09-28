if load_string("Plot", "state") = noone {
	// setting wardrobe dialogue
	inst_wardrobe_dialogue_trigger.dialogue_lines = [
		"You open the wardrobe.",
		"You found a key inside it!"
	]
	
	// making ethan walk
	if dialogue_trigger.has_dialogue_ended {	
		o_ethan.sprite_index = s_kid_ethan_walking
		o_ethan.y = 90
	}
	
	// saving new state
	if inst_wardrobe_dialogue_trigger.has_dialogue_ended {
		save_string("Plot", "state", "found_key_in_wardrobe")
		save_real("Plot", "index", 1)
	}
} else {
	inst_wardrobe_dialogue_trigger.dialogue_lines = [
		"You open the wardrobe.",
		"There are your usual\nplain-colored t-shirts."
	]
}