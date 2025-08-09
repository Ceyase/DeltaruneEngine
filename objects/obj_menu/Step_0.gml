if (current_state == "START"){
	if (input_check_pressed("confirm")){
		if (options_get(options) == "Copy"){
			title_message = "Choose a file to copy.";
			current_state = "COPY";
			options = options_set(options,"A");
		}else if (options_get(options) == "Erase"){
			current_state = "ERASE"
            options = options_set(options,"A");
		}else if (options_get(options) == "Exit"){
			game_end();
		}else{
			temp_selection = options_get(options);
			current_state = "CONFIRM_ACTION";
			options = options_set(options,"Yes");
		}
	}
	options_movestart();
	options = options_rulemove(options,"A","B",input_check_pressed("down"));
	options = options_rulemove(options,"B","C",input_check_pressed("down"));
	options = options_rulemove(options,"C","Copy",input_check_pressed("down"));
	options = options_rulemove(options,"Copy","C",input_check_pressed("up"));
	options = options_rulemove(options,"Erase","C",input_check_pressed("up"));
	options = options_rulemove(options,"Exit","C",input_check_pressed("up"));
	options = options_rulemove(options,"C","B",input_check_pressed("up"));
	options = options_rulemove(options,"B","A",input_check_pressed("up"));
	options = options_rulemove(options,"Copy","Erase",input_check_pressed("right"));
	options = options_rulemove(options,"Erase","Exit",input_check_pressed("right"));
	options = options_rulemove(options,"Exit","Erase",input_check_pressed("left"));
	options = options_rulemove(options,"Erase","Copy",input_check_pressed("left"));
}
else if (current_state == "COPY") {
	if (input_check_pressed("confirm")) {
		if (options_get(options) == "Cancel") {
			current_state = "START";
			title_message = "Please select a file.";
			options = options_set(options,"Copy");
		}
		else {
			temp_selection = options_get(options);
			current_state = "CONFIRM_COPY";
			title_message = "Choose a file to copy to.";
			options = options_set(options,temp_selection);
		}
	}
	options_movestart();
	options = options_rulemove(options,"A","B",input_check_pressed("down"));
	options = options_rulemove(options,"B","C",input_check_pressed("down"));
	options = options_rulemove(options,"C","Cancel",input_check_pressed("down"));
	options = options_rulemove(options,"Cancel","C",input_check_pressed("up"));
	options = options_rulemove(options,"C","B",input_check_pressed("up"));
	options = options_rulemove(options,"B","A",input_check_pressed("up"));
	if (input_check_pressed("cancel")){
		current_state = "START";
		title_message = "Please select a file.";
		options = options_set(options,"Copy");
	}
}
else if (current_state == "CONFIRM_COPY") {
	if (input_check_pressed("confirm")) {
		if (options_get(options) == "Cancel") {
			current_state = "START";
			title_message = "Please select a file.";
			options = options_set(options,"Copy");
		}
		else {
			target_slot = options_get(options);
			current_state = "CONFIRM_COPY_FINAL";
			options = options_set(options,"Yes");
		}
	}
	options_movestart();
	options = options_rulemove(options,"A","B",input_check_pressed("down"));
	options = options_rulemove(options,"B","C",input_check_pressed("down"));
	options = options_rulemove(options,"C","Cancel",input_check_pressed("down"));
	options = options_rulemove(options,"Cancel","C",input_check_pressed("up"));
	options = options_rulemove(options,"C","B",input_check_pressed("up"));
	options = options_rulemove(options,"B","A",input_check_pressed("up"));
	if (input_check_pressed("cancel")){
		current_state = "START";
		title_message = "Please select a file.";
		options = options_set(options,"Copy");
	}
}
else if (current_state == "CONFIRM_COPY_FINAL") {
	current_state = "START";
	title_message = "Copy complete.";
	options = options_set(options,"Copy");
}
else if (current_state == "ERASE") {
	if (input_check_pressed("confirm")) {
		if (options_get(options) == "Cancel") {
			current_state = "START"
			title_message = "Please select a file.";
			options = options_set(options,"Erase");
		} else {
			temp_selection = options_get(options)
			current_state = "CONFIRM_ERASE"
			options = options_set(options,"Yes");
		}
	}
	options_movestart();
	options = options_rulemove(options,"A","B",input_check_pressed("down"));
	options = options_rulemove(options,"B","C",input_check_pressed("down"));
	options = options_rulemove(options,"C","Cancel",input_check_pressed("down"));
	options = options_rulemove(options,"Cancel","C",input_check_pressed("up"));
	options = options_rulemove(options,"C","B",input_check_pressed("up"));
	options = options_rulemove(options,"B","A",input_check_pressed("up"));
	if (input_check_pressed("cancel")){
		current_state = "START";
		title_message = "Please select a file.";
		options = options_set(options,"Erase");
	}
}
else if (current_state == "CONFIRM_ERASE") {
	if (input_check_pressed("confirm")) {
		if (options_get(options) == "Yes") {
			current_state = "CONFIRM_ERASE_FINAL"
			options = options_set(options,"Yes");
		} else {
			current_state = "START"
			title_message = "Please select a file.";
			options = options_set(options,"Erase");
		}
	}
	options_movestart();
	options = options_rulemove(options,"Yes","No",input_check_pressed("right"));
	options = options_rulemove(options,"No","Yes",input_check_pressed("left"));
	if (input_check_pressed("cancel")){
		current_state = "START";
		title_message = "Please select a file.";
		options = options_set(options,"Erase");
	}
}
else if (current_state == "CONFIRM_ERASE_FINAL") {
	if (input_check_pressed("confirm")) {
		if (options_get(options) == "Yes") {
			//execute_erase(temp_selection)
			current_state = "START"
			title_message = "Please select a file.";
			options = options_set(options,temp_selection);
		} else {
			current_state = "START"
			title_message = "Please select a file.";
			options = options_set(options,"Erase");
		}
	}
	options_movestart();
	options = options_rulemove(options,"Yes","No",input_check_pressed("right"));
	options = options_rulemove(options,"No","Yes",input_check_pressed("left"));
	if (input_check_pressed("cancel")){
		current_state = "START";
		title_message = "Please select a file.";
		options = options_set(options,"Erase");
	}
}
else if (current_state == "CONFIRM_ACTION") {
	if (input_check_pressed("confirm")) {
		if (options_get(options) == "Yes") {
			//execute_slot_operation(temp_selection)
			current_state = "START"
			title_message = "Please select a file.";
			options = options_set(options, temp_selection);
		} else {
			current_state = "START"
			title_message = "Please select a file.";
			options = options_set(options, temp_selection);
		}
	}
	options_movestart();
	options = options_rulemove(options,"Yes","No",input_check_pressed("right"));
	options = options_rulemove(options,"No","Yes",input_check_pressed("left"));
	if (input_check_pressed("cancel")){
		current_state = "START";
		title_message = "Please select a file.";
		options = options_set(options, temp_selection);
	}
}