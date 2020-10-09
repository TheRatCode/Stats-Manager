draw_self();

if (selected) {
	draw_set_color(c_white);
	draw_sprite(spr_text_input_box_selected, -1, x, y);
	
	if (show_cursor) {
		draw_set_color(c_black);
		draw_line(x+8 + string_width(text_input), y-8, x+8 + string_width(text_input), y+8);
	}
}

draw_set_halign(fa_left);

draw_set_valign(fa_top);
draw_set_color(c_white);
draw_text(x, y-36, title_text);

draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(x+8, y, text_input);