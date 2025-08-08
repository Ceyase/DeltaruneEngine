_prefix = "";
if(text_color != ""){
	_prefix += "[d#"+string(text_color)+"]"
}
if(!init && str != ""){
	scribble_node = scribble(str);
	init = true;
}
if(_prefix != _p_prefix){
	_p_prefix = _prefix;
	scribble_node = scribble(_prefix + str);
}