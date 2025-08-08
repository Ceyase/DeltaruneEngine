current_state = root.current_state;
option = options_get(root.options);

event_user(0);

if(option != _p_option){
	_p_option = option;
	var heart_x = 139;
	var heart_y = 153;
	if(option = "B"){
		heart_y = 153+90;
	}else if(option = "C"){
		heart_y = 153+180;
	}else if(option = "Copy"){
		heart_x = 90;
		heart_y = 405;
	}else if(option = "Erase"){
		heart_x = 262;
		heart_y = 405;
	}else if(option = "Exit"){
		heart_x = 390;
		heart_y = 405;
	}
	TweenFire(heart, "ioSine", "once", true, 0.0, 0.2, "x>", heart_x, "y>", heart_y);
}

if (current_state == "START"){
	if (option == "A"){
		board_1.image_blend = #FFFFFF;
	}else if (option == "B"){
		board_2.image_blend = #FFFFFF;
	}else if (option == "C"){
		board_3.image_blend = #FFFFFF;
	}else if (option == "Copy"){
		text_copy.text_color = #FFFFFF;
	}else if (option == "Erase"){
		text_erase.text_color = #FFFFFF;
	}else if (option == "Exit"){
		text_exit.text_color = #FFFFFF;
	}
}
else if (current_state == "COPY") {
}
else if (current_state == "CONFIRM_COPY") {
}
else if (current_state == "CONFIRM_COPY_FINAL") {
}
else if (current_state == "ERASE") {
}
else if (current_state == "CONFIRM_ERASE") {
}
else if (current_state == "CONFIRM_ERASE_FINAL") {
}
else if (current_state == "CONFIRM_ACTION") {
}