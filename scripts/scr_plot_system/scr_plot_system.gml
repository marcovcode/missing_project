function string_to_state(str) {
	switch str {
		case "started": return 0
		case "found_key_in_ethan_bedroom": return 1
		case "opened_door_in_ethan_bedroom": return 2
	}
}