// dialogue
key_interact = keyboard_check_pressed(ord("E"))

if key_interact or auto_trigger {
    if talking {
        if text_index < string_length(lines[lines_current]) {
            text_display = lines[lines_current]
            text_index = string_length(lines[lines_current])
        } else {
            if lines_current < array_length(lines) - 1 {
                lines_current += 1
                text_index = 0
                text_display = ""
            } else {
				talking_end = true
                lines_current = 0
                talking = false
                text_index = 0
                text_display = ""
            }
        }
    } else if place_meeting(x, y, o_ethan) or auto_trigger {
		auto_trigger = false
        talking = true
        lines_current = 0
        text_display = ""
        text_index = 0
        text_timer = 0
    }
}

if talking {
    if text_index < string_length(lines[lines_current]) {
        text_timer += 1

        if text_timer >= text_speed {
            text_display += string_char_at(lines[lines_current], text_index + 1)
            text_index += 1
            text_timer = 0
        }
    }
}

// ethan
o_ethan.can_move = not talking