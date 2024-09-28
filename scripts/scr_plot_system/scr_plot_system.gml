function state_to_string(state) {
	switch state {
		case 0: return "started"
		case 1: return "found_key_in_wardrobe"
		case 2: return "opened_door_in_ethan_bedroom"
	}
}

function string_to_state(str) {
	switch str {
		case "started": return 0
		case "found_key_in_wardrobe": return 1
		case "opened_door_in_ethan_bedroom": return 2
	}
}