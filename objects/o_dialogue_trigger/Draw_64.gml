if is_talking {
    draw_set_font(f_04b03)
    draw_sprite(s_dialogue_box, 0, display_get_gui_width() / 2, 5)
    draw_text_transformed(10, 10, display_text, 0.5, 0.5, 0)
}