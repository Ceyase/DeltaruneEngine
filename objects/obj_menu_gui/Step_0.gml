current_state = root.current_state;
temp_selection = root.temp_selection;
title_message = root.title_message;
option = options_get(root.options);

event_user(0);

if(title_message != _p_title_message){
	_p_title_message = title_message;
	instance_destroy(tip);
	tip = text_create(80,60,prifix+title_message);
}

if(current_state != _p_current_state){
	_p_current_state = current_state;
	option_anim = option;
}
if(option != _p_option){
	_p_option = option;
	var heart_x = 139;
	var heart_y = 153;
	if(option == "B"){
		heart_y = 153+90;
	}else if(option == "C"){
		heart_y = 153+180;
	}else if(option == "Copy" || option == "Cancel"){
		heart_x = 90;
		heart_y = 398;
	}else if(option == "Erase"){
		heart_x = 262;
		heart_y = 398;
	}else if(option == "Exit"){
		heart_x = 390;
		heart_y = 398;
	}
	if(option == "Yes"){
		heart_x = 159;
		if(temp_selection == "A"){
			heart_y = 171;
		}else if(temp_selection == "B"){
			heart_y = 171 + 90;
		}else if(temp_selection == "C"){
			heart_y = 171 + 180;
		}
	}else if(option == "No"){
		heart_x = 159 + 180;
		if(temp_selection == "A"){
			heart_y = 171;
		}else if(temp_selection == "B"){
			heart_y = 171 + 90;
		}else if(temp_selection == "C"){
			heart_y = 171 + 180;
		}
	}
	TweenFire(heart, EaseOutExpo, "once", true, 0.0, 0.2, "x>", heart_x, "y>", heart_y);
	CO_PARAMS.node = self;
	CO_BEGIN
	DELAY 70 THEN
	CO_LOCAL.node.option_anim = CO_LOCAL.node.option;
	CO_END
}

if (current_state == "START"){
	switch_color();
}
else if (current_state == "COPY") {
	switch_color();
	text_copy.text_visible = false;
	text_erase.text_visible = false;
	text_exit.text_visible = false;
	text_cancel.text_visible = true;
}
else if (current_state == "CONFIRM_COPY") {
	switch_color();
	text_copy.text_visible = false;
	text_erase.text_visible = false;
	text_exit.text_visible = false;
	text_cancel.text_visible = true;
	if (temp_selection == "A"){
		board_1.image_blend = #FFFF66;
	}else if (temp_selection == "B"){
		board_2.image_blend = #FFFF66;
	}else if (temp_selection == "C"){
		board_3.image_blend = #FFFF66;
	}
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
	if (temp_selection == "A"){
		board_1.image_blend = #FFFFFF;
		text2_1.text_visible = false;
		text4_1.text_visible = true;
		text5_1.text_visible = true;
	}else if (temp_selection == "B"){
		board_2.image_blend = #FFFFFF;
		text2_2.text_visible = false;
		text4_2.text_visible = true;
		text5_2.text_visible = true;
	}else if (temp_selection == "C"){
		board_3.image_blend = #FFFFFF;
		text2_3.text_visible = false;
		text4_3.text_visible = true;
		text5_3.text_visible = true;
	}
	var list;
	if(option == "Yes"){
		list = [text4_1,text4_2,text4_3];
	}else{
		list = [text5_1,text5_2,text5_3];
	}
	array_foreach(list,function(value){
		value.text_color = #FFFFFF;
	});
}