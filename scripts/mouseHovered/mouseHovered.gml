/// @function					mouseHovered(entID);
/// @param {optional} entID		The optional entID to check for
function mouseHovered(entID) {
	if (argument_count == 1) {
		with (entID) {
			return point_in_rectangle(mouse_x, mouse_y, x, y, x+sprite_width, y+sprite_height);	
		}
	} else {
		return point_in_rectangle(mouse_x, mouse_y, x, y, x+sprite_width, y+sprite_height);
	}
}