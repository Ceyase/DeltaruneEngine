function log_print(level, log_message){
	if!(is_int64(level)){
		log_print(loglevel.error, "The zero parameter of log should be an integer between 0 and 3.");
	}
	if(level < 0 || level > 3){
		log_print(loglevel.error, "The zero parameter of log should be an integer between 0 and 3.");
	}
	
	var final_message = global.log_template;
	var time_string = date_time_string(date_current_datetime());
	final_message = string_replace_all(final_message, "%Time%", time_string);
	final_message = string_replace_all(final_message, "%Level%", log_level_get_name(level));
	final_message = string_replace_all(final_message, "%Content%", log_message);
	
	if(level <= global.log_level){
		show_debug_message(final_message);
	}
	
	if(level == loglevel.error){
		show_error(final_message, true);
	}
}