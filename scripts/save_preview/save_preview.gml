function save_preview(){
	var saves = {};
	var file_name = file_find_first(game_save_id + "*.json", fa_none);
	while(file_name != ""){
		var file_path = game_save_id + file_name;
		var json = file_text_read_full(file_path);
		var save = json_parse(json);
		var preview = {
			player_name : save[$ "metadata.player_name"],
			save_name : save[$ "metadata.save_name"],
			time : save[$ "metadata.time"]
		};
		var name = string_copy(file_name,0,string_length(file_name)-5);
		saves[$ name] = preview;
		file_name = file_find_next();
	}
	file_find_close();
	return saves;
}