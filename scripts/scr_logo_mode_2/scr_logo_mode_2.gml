function scr_logo_mode_2(){
	return CO_BEGIN
	
	playsnd = function(){
		snd = audio_play_sound(snd_noise,0,false);
		audio_sound_gain(snd, 0.8,0);
		audio_sound_pitch(snd, 0.5 + random(1));
	};
	charlist = ["d","e2","e","n","l","u","t","r","a"];
	FOREACH char IN charlist THEN
		scr_logo_char(char);
		playsnd();
		DELAY 266 THEN
	END
	DELAY 833 THEN
	engine = scr_logo_char("engine")
	playsnd();
	DELAY 2000 THEN
	room_goto_next();
	
	CO_END
}