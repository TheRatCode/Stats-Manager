if (selected) {
	if (string_length(text_input) < limit) {
		text_input += keyboard_string;
		keyboard_string = "";
	} else {
		keyboard_string = "";
	}
}