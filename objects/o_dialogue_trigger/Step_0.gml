interact_key = keyboard_check_pressed(ord("E"))

if interact_key or auto_trigger_dialogue {
    if is_talking {
        if display_text_character_index < string_length(dialogue_lines[current_dialogue_line_index]) {
            display_text = dialogue_lines[current_dialogue_line_index]
            display_text_character_index = string_length(dialogue_lines[current_dialogue_line_index])
        } else {
            if current_dialogue_line_index < array_length(dialogue_lines) - 1 {
                current_dialogue_line_index += 1
                display_text_character_index = 0
                display_text = ""
            } else {
                has_dialogue_ended = true
                current_dialogue_line_index = 0
                is_talking = false
                display_text_character_index = 0
                display_text = ""
            }
        }
    } else if place_meeting(x, y, o_ethan) or auto_trigger_dialogue {
        auto_trigger_dialogue = false
        is_talking = true
        current_dialogue_line_index = 0
        display_text = ""
        display_text_character_index = 0
        display_text_timer = 0
    }
}

if is_talking {
    if display_text_character_index < string_length(dialogue_lines[current_dialogue_line_index]) {
        display_text_timer += 1

        if display_text_timer >= display_text_speed {
            display_text += string_char_at(dialogue_lines[current_dialogue_line_index], display_text_character_index + 1)
            display_text_character_index += 1
            display_text_timer = 0
        }
    }
}

// ethan interaction
o_ethan.can_move = not is_talking