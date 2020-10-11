draw_self();

if (selected) {
	draw_set_color(c_white);
	draw_sprite_ext(spr_text_input_box_selected, -1, x, y, image_xscale, image_yscale, 0, c_white, 1);
	
	if (show_cursor) {
		draw_set_color(c_black);
		draw_line(x+8 + string_width(text_input), y-8+sprite_height/2, x+8 + string_width(text_input), y+8+sprite_height/2);
	}
}

draw_set_halign(fa_left);

draw_set_valign(fa_bottom);
draw_set_color(c_white);
draw_text(x, y, title_text);

draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(x+8, y+sprite_height/2, text_input);