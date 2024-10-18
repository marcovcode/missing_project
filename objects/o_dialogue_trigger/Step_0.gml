// Detect interaction key press
interact_key_pressed = keyboard_check_pressed(ord("E"))

// Check if the player has pressed the interact key or if auto-trigger is on
if (interact_key_pressed or auto_trigger_dialogue) and array_length(dialogue_data) > 0 {
    if is_talking {
        var current_dialogue = dialogue_data[current_dialogue_line_index]
        var current_text = current_dialogue.text
        var current_speaker = current_dialogue.speaker

        if display_text_character_index < string_length(current_text) {
            if interact_key_pressed {
                // Show full line when interact key is pressed
                display_text_character_index = string_length(current_text)
                
                // Add speaker name if it exists
                if current_speaker != "" {
                    display_text = current_speaker + ": " + current_text
                } else {
                    display_text = current_text
                }
            } else {
                // Continue normal text display one character at a time
                display_text_timer += 1

                if display_text_timer >= display_text_speed {
                    // Add the speaker name at the start of the line
                    if display_text_character_index == 0 && current_speaker != "" {
                        display_text = "[" + current_speaker + "]: "
                    }

                    display_text += string_char_at(current_text, display_text_character_index + 1)
                    display_text_character_index += 1
                    display_text_timer = 0
                }
            }
        } else {
            // If current dialogue line is fully displayed, move to the next
            if current_dialogue_line_index < array_length(dialogue_data) - 1 {
                current_dialogue_line_index += 1
                display_text_character_index = 0
                display_text = ""
            } else {
                // End of dialogue
                o_ethan.is_talking = false
                o_ethan.can_move = true // Allow Ethan to move
                has_dialogue_ended = true // Dialogue ended
                current_dialogue_line_index = 0
                is_talking = false
                display_text_character_index = 0
                display_text = ""
            }
        }
    } else if (place_meeting(x, y, o_ethan) or auto_trigger_dialogue) and !o_ethan.is_talking {
        // Start dialogue if the player is near Ethan or auto-trigger is active and Ethan is not already talking
        o_ethan.is_talking = true
        o_ethan.can_move = false // Stop Ethan from moving
        auto_trigger_dialogue = false // Reset auto-trigger
        is_talking = true // Set talking state
        current_dialogue_line_index = 0 // Start from the first line
        display_text = "" // Reset displayed text
        display_text_character_index = 0 // Start displaying from the first character
        display_text_timer = 0 // Reset timer
    }
}

// Handle text display when in the middle of a conversation
if is_talking {
    var current_dialogue = dialogue_data[current_dialogue_line_index]
    var current_text = current_dialogue.text
    var current_speaker = current_dialogue.speaker

    if display_text_character_index < string_length(current_text) {
        display_text_timer += 1

        if display_text_timer >= display_text_speed {
            // Add the speaker name at the start of the line
            if display_text_character_index == 0 && current_speaker != "" {
                display_text = current_speaker + ": "
            }

            display_text += string_char_at(current_text, display_text_character_index + 1)
            display_text_character_index += 1
            display_text_timer = 0
        }
    }
}
