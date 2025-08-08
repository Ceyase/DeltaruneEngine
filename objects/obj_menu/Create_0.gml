current_state = "START";
temp_selection = undefined;
target_slot = "A";
options = options_create(["A","B","C","Copy","Erase","Exit","Yes","No","Cancel"]);
options_movingevent(function(){
	audio_play_sound(snd_noise,0,0);
});