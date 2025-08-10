root = obj_menu;
preview = save_preview();

current_state = root.current_state;
_p_current_state = current_state;

option = options_get(root.options);
option_anim = options_get(root.options);
_p_option = options_get(root.options);

title_message = root.title_message;
_p_title_message = root.title_message;

temp_selection = root.temp_selection;

prefix = "[fnt_main][scale,2][fa_left][fa_top]";
heart = instance_create_depth(139,153,0,obj_ui_heart);

// header

title = text_create(16,8,prefix+"Engine 0.1.0");
tip   = text_create(80,60,prefix+title_message);

// Game Save Slot #1

board_1 = panel_create();
line1_1 = line_create_pos(106,106,533,106,4);
line2_1 = line_create_pos(533,106,533,191,4);
line3_1 = line_create_pos(533,191,106,191,4);
line4_1 = line_create_pos(106,191,106,106,4);
text1_1 = text_create(160,120,prefix+"------");
text2_1 = text_create(160,153,prefix+"Dark World");
text3_1 = text_create(388,120,prefix+date_time_string(date_current_datetime()));
text8_1 = text_create(160,120,prefix+"Erase this file?");
panel_add_array(board_1, [line1_1,line2_1,line3_1,line4_1,text1_1,text2_1,text3_1,text8_1]);
text4_1 = text_create(180,153,prefix+"Continue");
text5_1 = text_create(360,153,prefix+"Back");
text6_1 = text_create(180,153,prefix+"Yes");
text7_1 = text_create(360,153,prefix+"No");
text9_1 = text_create(160,120,prefix+"Really erase it?");
text10_1 = text_create(180,153,prefix+"Yes!");
text11_1 = text_create(360,153,prefix+"No!");
text12_1 = text_create(180,153,prefix+"Start");

// Game Save Slot #2
board_2 = panel_create();
line1_2 = line_create_pos(106,106+90,533,106+90,4);
line2_2 = line_create_pos(533,106+90,533,191+90,4);
line3_2 = line_create_pos(533,191+90,106,191+90,4);
line4_2 = line_create_pos(106,191+90,106,106+90,4);
text1_2 = text_create(160,120+90,prefix+"------");
text2_2 = text_create(160,153+90,prefix+"Dark World");
text3_2 = text_create(388,120+90,prefix+date_time_string(date_current_datetime()));
text8_2 = text_create(160,120+90,prefix+"Erase this file?");
panel_add_array(board_2, [line1_2,line2_2,line3_2,line4_2,text1_2,text2_2,text3_2,text8_2]);
text4_2 = text_create(180,153+90,prefix+"Continue");
text5_2 = text_create(360,153+90,prefix+"Back");
text6_2 = text_create(180,153+90,prefix+"Yes");
text7_2 = text_create(360,153+90,prefix+"No");
text9_2 = text_create(160,120+90,prefix+"Really erase it?");
text10_2 = text_create(180,153+90,prefix+"Yes!");
text11_2 = text_create(360,153+90,prefix+"No!");
text12_2 = text_create(180,153+90,prefix+"Start");

// Game Save Slot #3
board_3 = panel_create();
line1_3 = line_create_pos(106,106+180,533,106+180,4);
line2_3 = line_create_pos(533,106+180,533,191+180,4);
line3_3 = line_create_pos(533,191+180,106,191+180,4);
line4_3 = line_create_pos(106,191+180,106,106+180,4);
text1_3 = text_create(160,120+180,prefix+"------");
text2_3 = text_create(160,153+180,prefix+"Dark World");
text3_3 = text_create(388,120+180,prefix+date_time_string(date_current_datetime()));
text8_3 = text_create(160,120+180,prefix+"Erase this file?");
panel_add_array(board_3, [line1_3,line2_3,line3_3,line4_3,text1_3,text2_3,text3_3,text8_3]);
text4_3 = text_create(180,153+180,prefix+"Continue");
text5_3 = text_create(360,153+180,prefix+"Back");
text6_3 = text_create(180,153+180,prefix+"Yes");
text7_3 = text_create(360,153+180,prefix+"No");
text9_3 = text_create(160,120+180,prefix+"Really erase it?");
text10_3 = text_create(180,153+180,prefix+"Yes!");
text11_3 = text_create(360,153+180,prefix+"No!");
text12_3 = text_create(180,153+180,prefix+"Start");

event_user(1);

text_copy = text_create(108,380,prefix+"Copy");
text_erase = text_create(280,380,prefix+"Erase");
text_exit = text_create(408,380,prefix+"End Program");
text_cancel = text_create(108,380,prefix+"Cancel");

switch_color = function(){
	if (option_anim == "A"){
		board_1.image_blend = #FFFFFF;
	}else if (option_anim == "B"){
		board_2.image_blend = #FFFFFF;
	}else if (option_anim == "C"){
		board_3.image_blend = #FFFFFF;
	}else if (option_anim == "Copy"){
		text_copy.text_color = #FFFFFF;
	}else if (option_anim == "Erase"){
		text_erase.text_color = #FFFFFF;
	}else if (option_anim == "Exit"){
		text_exit.text_color = #FFFFFF;
	}else if (option_anim == "Cancel"){
		text_cancel.text_color = #FFFFFF;
	}
}