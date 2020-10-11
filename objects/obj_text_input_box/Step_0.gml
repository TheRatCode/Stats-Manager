if (selected) {
	if (keyboard_check(vk_control) && keyboard_check(ord("V"))) {
		if (alarm[2] == -1) {
			alarm[2] = room_speed/2;	
		}
	} else {
		text_input += keyboard_string;
		keyboard_string = "";
	}
}