interact_key_pressed = keyboard_check_pressed(ord("E"))

if (interact_key_pressed or auto_trigger_dialogue) and array_length(dialogue_lines) > 0 {
    if is_talking {
        if display_text_character_index < string_length(dialogue_lines[current_dialogue_line_index]) {
            if interact_key_pressed {
                // Show full line when interact key is pressed
                display_text_character_index = string_length(dialogue_lines[current_dialogue_line_index]);
                
                // Add speaker name if it exists
                if speaker_name != "" {
                    display_text = speaker_name + ": " + dialogue_lines[current_dialogue_line_index];
                } else {
                    display_text = dialogue_lines[current_dialogue_line_index];
                }
            } else {
                // Continue normal text display one character at a time
                display_text_timer += 1;

                if display_text_timer >= display_text_speed {
                    // Add the speaker name at the start of the line
                    if display_text_character_index == 0 && speaker_name != "" {
                        display_text = "[" + speaker_name + "]: ";
                    }

                    display_text += string_char_at(dialogue_lines[current_dialogue_line_index], display_text_character_index + 1);
                    display_text_character_index += 1;
                    display_text_timer = 0;
                }
            }
        } else {
            if current_dialogue_line_index < array_length(dialogue_lines) - 1 {
                current_dialogue_line_index += 1;
                display_text_character_index = 0;
                display_text = "";
            } else {
				// making ethan move
				o_ethan.can_move = true
				
				// resetting variables
                has_dialogue_ended = true;
                current_dialogue_line_index = 0;
                is_talking = false;
                display_text_character_index = 0;
                display_text = "";
            }
        }
    } else if place_meeting(x, y, o_ethan) or auto_trigger_dialogue {
		// stopping ethan from walking
		o_ethan.can_move = false;
	
		// resetting variables
        auto_trigger_dialogue = false;
        is_talking = true;
        current_dialogue_line_index = 0;
        display_text = "";
        display_text_character_index = 0;
        display_text_timer = 0;
    }
}

if is_talking {
    if display_text_character_index < string_length(dialogue_lines[current_dialogue_line_index]) {
        display_text_timer += 1;

        if display_text_timer >= display_text_speed {
            // Add the speaker name at the start of the line
            if display_text_character_index == 0 && speaker_name != "" {
                display_text = speaker_name + ": ";
            }

            display_text += string_char_at(dialogue_lines[current_dialogue_line_index], display_text_character_index + 1);
            display_text_character_index += 1;
            display_text_timer = 0;
        }
    }
}
