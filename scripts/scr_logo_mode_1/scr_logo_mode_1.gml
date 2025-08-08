function scr_logo_mode_1(){
	return CO_BEGIN
	
	logo = instance_create_depth(room_width/2,room_height/2,0,obj_logo);
	logo.image_xscale = 2;
	logo.image_yscale = 2;
	audio_play_sound(snd_logo_1,0,false);
	
	DELAY 3500 THEN
	room_goto_next();
	
	CO_END
}