if not load_string("Plot", "state") {
	// creating ethan
	instance_create_layer(100, 100, "Ethan", o_ethan)
	
	o_ethan.x = 25
	o_ethan.y = 95
	o_ethan.sprite_index = s_kid_ethan_sleeping

	// creating dialogue trigger
	dialogue_trigger = instance_create_layer(0, 0, "Utilities", o_dialogue_trigger)
	
	dialogue_trigger.auto_trigger_dialogue = true
	dialogue_trigger.dialogue_lines = [
		"Ethan!",
		"Wake up!",
		"Hurry, we need to go buy\nthe birthday gift for your\nsister!",
	]
	
	// editing wardrobe dialogue
	inst_wardrobe_dialogue_trigger.dialogue_lines = [
		"You open the wardrobe.",
		"You found a key inside it!"
	]
} else {
	inst_wardrobe_dialogue_trigger.dialogue_lines = [
		"You open the wardrobe.",
		"There are your usual\nplain-colored t-shirts."
	]
}