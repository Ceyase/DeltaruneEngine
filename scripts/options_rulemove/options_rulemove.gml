function options_rulemove(choices,origin,target,rule){
	if(variable_instance_exists(self,"___choices_can_be_moved") == false){
		log_error("Before calling choices_rulemove, you must first call choices_movestart.");
	}
	if(___choices_can_be_moved == false) return choices;
	if(choices[$ "now"] == origin && rule){
		
		choices[$ "now"] = target;
		___choices_can_be_moved = false;
		
		if(variable_instance_exists(self,"___choices_movingevent")){
			___choices_movingevent();
		}
	}
	return choices;
}