function save_load(save_id = 0){
	var filepath = game_save_id + string("save{0}.json",save_id);
	if!(file_exists(filepath)){
		log_error("save_load loaded a non-existent save file.");
	}
	var json = file_text_read_full(game_save_id + string("save{0}.json",save_id));
	var save = json_parse(json);
	obj_database.save = save;
}