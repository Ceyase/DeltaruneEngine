// Reset
board_1.image_blend = #B39A9A;
board_2.image_blend = #B39A9A;
board_3.image_blend = #B39A9A;
var list = [
text1_1,text1_2,text1_3,
text2_1,text2_2,text2_3,
text3_1,text3_2,text3_3,
text_copy,text_erase,text_exit];
array_foreach(list,function(value){
	value.text_visible = true;
	value.text_color = #B39A9A;
});

list = [
text4_1,text4_2,text4_3,
text5_1,text5_2,text5_3,
text6_1,text6_2,text6_3,
text7_1,text7_2,text7_3,
text8_1,text8_2,text8_3,
text9_1,text9_2,text9_3,
text10_1,text10_2,text10_3,
text11_1,text11_2,text11_3,
text_cancel];
array_foreach(list,function(value){
	value.text_visible = false;
	value.text_color = #B39A9A;
});