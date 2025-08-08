root = obj_menu;
current_state = root.current_state;
option = options_get(root.options);
_p_option = options_get(root.options);
prifix = "[fnt_main][scale,2][fa_left][fa_top]";
heart = instance_create_depth(139,153,0,obj_ui_heart);

// Game Save Slot #1

board_1 = panel_create();
line1_1 = line_create_pos(106,106,533,106,4);
line2_1 = line_create_pos(533,106,533,191,4);
line3_1 = line_create_pos(533,191,106,191,4);
line4_1 = line_create_pos(106,191,106,106,4);
text1_1 = text_create(160,120,prifix+"------");
text2_1 = text_create(160,153,prifix+"Dark World");
text3_1 = text_create(388,120,prifix+date_time_string(date_current_datetime()));
panel_add_array(board_1, [line1_1,line2_1,line3_1,line4_1,text1_1,text2_1,text3_1]);

// Game Save Slot #2
board_2 = panel_create();
line1_2 = line_create_pos(106,106+90,533,106+90,4);
line2_2 = line_create_pos(533,106+90,533,191+90,4);
line3_2 = line_create_pos(533,191+90,106,191+90,4);
line4_2 = line_create_pos(106,191+90,106,106+90,4);
text1_2 = text_create(160,120+90,prifix+"------");
text2_2 = text_create(160,153+90,prifix+"Dark World");
text3_2 = text_create(388,120+90,prifix+date_time_string(date_current_datetime()));
panel_add_array(board_2, [line1_2,line2_2,line3_2,line4_2,text1_2,text2_2,text3_2]);

// Game Save Slot #3
board_3 = panel_create();
line1_3 = line_create_pos(106,106+180,533,106+180,4);
line2_3 = line_create_pos(533,106+180,533,191+180,4);
line3_3 = line_create_pos(533,191+180,106,191+180,4);
line4_3 = line_create_pos(106,191+180,106,106+180,4);
text1_3 = text_create(160,120+180,prifix+"------");
text2_3 = text_create(160,153+180,prifix+"Dark World");
text3_3 = text_create(388,120+180,prifix+date_time_string(date_current_datetime()));
panel_add_array(board_3, [line1_3,line2_3,line3_3,line4_3,text1_3,text2_3,text3_3]);

text_copy = text_create(108,388,prifix+"Copy");
text_erase = text_create(280,388,prifix+"Erase");
text_exit = text_create(408,388,prifix+"End Program");