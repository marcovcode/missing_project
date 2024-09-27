if not load_string("Plot", "state") {
	// ethan
	instance_create_layer(100, 100, "Player", o_ethan)
	
	o_ethan.x = 25
	o_ethan.y = 95
	o_ethan.sprite_index = s_kid_ethan_sleeping

	// dialogue
	dialogue_trigger = instance_create_layer(0, 0, "Utilities", o_dialogue_trigger)
	
	dialogue_trigger.auto_trigger = true
	dialogue_trigger.lines = [
		"Ethan!",
		"Wake up!",
		"Hurry up, we need to go buy\nthe birthday gift for your\nsister!",
	]
}