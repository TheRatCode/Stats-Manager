draw_self();

if (selected) {
	draw_set_color(c_white);
	draw_sprite(spr_text_input_box_selected, -1, x, y);
	
	if (show_cursor) {
		draw_set_color(c_black);
		var w = string_width(title_text)+string_width(text_input);
		draw_line(x+8+w, y-8+sprite_height/2, x+8+w, y+8+sprite_height/2);
	}
}

draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_color(c_black);
draw_text(x+8, y+sprite_height/2, title_text);
draw_text(x+8+string_width(title_text), y+sprite_height/2, text_input);