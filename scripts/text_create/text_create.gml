function text_create(x,y,str = ""){
	var node = instance_create_depth(x,y,0,obj_text);
	node.str = str;
	node.node_type = "text";
	return node;
}