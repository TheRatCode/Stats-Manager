if (sprite != -1) {
	var w = sprite_get_width(sprite);
	var h = sprite_get_height(sprite);
	
	var xScale = sprite_width/w;
	var yScale = sprite_height/h;
	
	draw_sprite_ext(sprite, -1, x, y, xScale, yScale, 0, c_white, 1);
}

draw_self();

draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(x+sprite_width/2, y+sprite_height+8, title_text);