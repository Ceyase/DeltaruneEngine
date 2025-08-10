function save_create(player_name, save_name, time, save_id = 0){
	var file = {};
	file[$ "metadata.player_name"] = player_name;
	file[$ "metadata.save_name"] = save_name;
	file[$ "metadata.time"] = time;
	var json = json_stringify(file);
	file_text_write_full(game_save_id + string("save{0}.json",save_id), json);
}