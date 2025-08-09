// Reset
board_1.image_blend = #B39A9A;
board_2.image_blend = #B39A9A;
board_3.image_blend = #B39A9A;
var list = [text2_1,text2_2,text2_3,text_copy,text_erase,text_exit];
array_foreach(list,function(value){
	value.text_visible = true;
	value.text_color = #B39A9A;
});

list = [text4_1,text4_2,text4_3,text5_1,text5_2,text5_3,text_cancel];
array_foreach(list,function(value){
	value.text_visible = false;
	value.text_color = #B39A9A;
});