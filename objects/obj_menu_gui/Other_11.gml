// Reset Save Cache
preview = save_preview();
instance_destroy_array([
board_1,board_2,board_3,
text1_1,text2_1,text3_1,
text1_2,text2_2,text3_2,
text1_3,text2_3,text3_3
]);

board_1 = panel_create();
board_2 = panel_create();
board_3 = panel_create();
if(struct_exists(preview,"save0")){
	text1_1 = text_create(160,120,prefix+preview[$ "save0"][$ "player_name"]);
	text2_1 = text_create(160,153,prefix+preview[$ "save0"][$ "save_name"]);
	text3_1 = text_create(388,120,prefix+date_time_string(preview[$ "save0"][$ "time"]));
}else{
	text1_1 = text_create(160,120,prefix+"[[EMPTY]");
	text2_1 = text_create(160,153,prefix+"------------");
	text3_1 = text_create(388,120,prefix+"--:--");
}
if(struct_exists(preview,"save1")){
	text1_2 = text_create(160,120+90,prefix+preview[$ "save1"][$ "player_name"]);
	text2_2 = text_create(160,153+90,prefix+preview[$ "save1"][$ "save_name"]);
	text3_2 = text_create(388,120+90,prefix+date_time_string(preview[$ "save1"][$ "time"]));
}else{
	text1_2 = text_create(160,120+90,prefix+"[[EMPTY]");
	text2_2 = text_create(160,153+90,prefix+"------------");
	text3_2 = text_create(388,120+90,prefix+"--:--");
}
if(struct_exists(preview,"save2")){
	text1_3 = text_create(160,120+180,prefix+preview[$ "save2"][$ "player_name"]);
	text2_3 = text_create(160,153+180,prefix+preview[$ "save2"][$ "save_name"]);
	text3_3 = text_create(388,120+180,prefix+date_time_string(preview[$ "save2"][$ "time"]));
}else{
	text1_3 = text_create(160,120+180,prefix+"[[EMPTY]");
	text2_3 = text_create(160,153+180,prefix+"------------");
	text3_3 = text_create(388,120+180,prefix+"--:--");
}
panel_add_array(board_1, [line1_1,line2_1,line3_1,line4_1,text1_1,text2_1,text3_1,text8_1]);
panel_add_array(board_2, [line1_2,line2_2,line3_2,line4_2,text1_2,text2_2,text3_2,text8_2]);
panel_add_array(board_3, [line1_3,line2_3,line3_3,line4_3,text1_3,text2_3,text3_3,text8_3]);