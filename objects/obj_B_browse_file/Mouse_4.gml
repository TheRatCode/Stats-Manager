/// @description Select file
if (linkedObject != -1) {
	var fileStr = get_open_filename("PNG|*.png", "");

	if (fileStr != "") {
		with (linkedObject) {
			text_input = fileStr;
		}
	}
} else {
	show_debug_message("No linked object");	
}