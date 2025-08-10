function save_get_value(keypath, default_value = "no-default-value"){
	if!(struct_exists(obj_database.save,keypath)){
		if(default_value == "no-default-value"){
			log_error("save_get_value can only read keys that already exist in the save, unless you add a default value.");
		}else{
			return default_value;
		}
	}
	return obj_database.save[$ keypath];
}