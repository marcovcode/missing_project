// moving ethan
o_ethan.x = 20
o_ethan.y = 90

// starting mom dialogue
mom_dialogue_trigger = instance_create_layer(0, 0, "Utilities", o_dialogue_trigger)
mom_dialogue_trigger.auto_trigger_dialogue = true
mom_dialogue_trigger.dialogue_data = [
	{speaker: "Mom", text: "Here we are."},
	{speaker: "Mom", text: "Now go buy a doll for your sister."},
	{speaker: "Mom", text: "And be careful which one you choose, I don't want to disappoint her."}
]