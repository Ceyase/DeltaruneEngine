current_state = "START";
temp_selection = undefined;
target_slot = "A";
options = options_create(["A","B","C","Copy","Erase","Exit","Yes","No","Cancel"]);
title_message = "Please select a file.";
preview = save_preview();

options_movingevent(function(){
	audio_play_sound(snd_noise,0,0);
});

empty_check = function(option){
	switch(option){
		case "A":
			return !struct_exists(preview,"save0");
		case "B":
			return !struct_exists(preview,"save1");
		case "C":
			return !struct_exists(preview,"save2");
	}
}