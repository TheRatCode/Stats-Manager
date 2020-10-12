if (selected) {
	if (keyboard_check(vk_control) && keyboard_check(ord("V"))) {
		if (alarm[2] == -1 && shouldCopyClipboard) {
			alarm[2] = 1;
			shouldCopyClipboard = false;
		}
	} else {
		shouldCopyClipboard = true;
		text_input += keyboard_string;
		keyboard_string = "";
	}
}