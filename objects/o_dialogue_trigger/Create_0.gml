// Dialogue control variables
auto_trigger_dialogue = false;
is_talking = false;
has_dialogue_ended = false;

dialogue_data = []
current_dialogue_line_index = 0;
display_text = "";
display_text_timer = 0;
display_text_speed = 0.05 * game_get_speed(gamespeed_fps);
display_text_character_index = 0;