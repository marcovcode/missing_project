if load_string("Plot", "state") = string_to_state("started") {
	// making Ethan walk
	if mom_dialogue_trigger.has_dialogue_ended {
		o_ethan.sprite_index = s_kid_ethan_walking
		o_ethan.y = 90
	}

	// setting key in wardrobe dialogue
	if not inst_wardrobe_dialogue_trigger.is_talking
		inst_wardrobe_dialogue_trigger.dialogue_lines = [
			"You open the wardrobe.",
			"You found a key inside it!"
		]
		
	// removing door ended state
	inst_door_dialogue_trigger.has_dialogue_ended = false

	// saving found key state
	if inst_wardrobe_dialogue_trigger.is_talking
		save_real("Plot", "state", string_to_state("found_key_in_wardrobe"))
} else {
	if not inst_wardrobe_dialogue_trigger.is_talking
		inst_wardrobe_dialogue_trigger.dialogue_lines = [
			"You open the wardrobe.",
			"There are your usual\nplain-colored t-shirts."
		]
}

if load_string("Plot", "state") < string_to_state("found_key_in_wardrobe") {
	if not inst_door_dialogue_trigger.is_talking
		inst_door_dialogue_trigger.dialogue_lines = [
			"The door is closed.",
		]
} else if load_string("Plot", "state") = string_to_state("found_key_in_wardrobe") {
	// setting open door state
	if not inst_door_dialogue_trigger.is_talking
		inst_door_dialogue_trigger.dialogue_lines = [
			"You open the door.",
		]

	// saving open door state and enabling warp when dialogue ends
	if inst_door_dialogue_trigger.has_dialogue_ended
		save_real("Plot", "state", string_to_state("opened_door_in_ethan_bedroom"))
} else {
	if not inst_door_dialogue_trigger.is_talking
		inst_door_dialogue_trigger.dialogue_lines = []
}

if load_string("Plot", "state") < string_to_state("opened_door_in_ethan_bedroom")
	inst_door_warp.enabled = false
else if load_string("Plot", "state") = string_to_state("opened_door_in_ethan_bedroom") inst_door_warp.enabled = true