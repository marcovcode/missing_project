if load_string("Plot", "state") = string_to_state("started") {
	// making ethan sleep
	o_ethan.x = 25
	o_ethan.y = 95
	o_ethan.sprite_index = s_kid_ethan_sleeping

	// creating mom dialogue trigger
	mom_dialogue_trigger = instance_create_layer(0, 0, "Utilities", o_dialogue_trigger)
	
	mom_dialogue_trigger.auto_trigger_dialogue = true
	mom_dialogue_trigger.dialogue_lines = [
		"Ethan!",
		"Wake up!",
		"Hurry, we need to go buy\nthe birthday gift for your\nsister!",
	]
}