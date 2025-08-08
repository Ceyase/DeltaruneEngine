function scr_logo_mode_3(){
	return CO_BEGIN
	
	sound = audio_play_sound(snd_tv_static,0,true);
	charlist = ["d","e2","e","n","l","u","t","r","a"];
	
	FOREACH char IN charlist THEN
		char = scr_logo_char(char);
		DELAY 466 THEN
	END
	
	audio_stop_sound(sound);
	
	DELAY 833 THEN
	engine = scr_logo_char("engine")
	DELAY 2000 THEN
	room_goto_next();
	
	CO_END
}