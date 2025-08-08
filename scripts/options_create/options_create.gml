function options_create(choices_list = ["default"]){
	if(array_length(choices_list) < 1){
		log_error("choices_create does not accept arrays with a length of 0.");
	}
	var choices = {};
	choices[$ "map"] = choices_list;
	choices[$ "now"] = choices_list[0];
	return choices;
}