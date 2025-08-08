function scr_logo_char(char){
	spr_char = asset_get_index("spr_logo_" + char);
	obj_char = instance_create_depth(room_width/2, room_height/2, 0, obj_logo_char);
	obj_char.sprite_index = spr_char;
	obj_char.image_xscale = 2;
	obj_char.image_yscale = 2;
	return obj_char;
}