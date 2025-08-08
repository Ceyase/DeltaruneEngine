for(var i = 0;i < array_length(nodes);i++){
	var node_struct = nodes[i];
	var node = node_struct[$ "id"];
	if(node.node_type == "line"){
		node.image_blend = image_blend;
		node.x = x + node_struct[$ "x"];
		node.y = y + node_struct[$ "y"];
	}
	if(node.node_type == "text"){
		node.text_color = image_blend;
		node.x = x + node_struct[$ "x"];
		node.y = y + node_struct[$ "y"];
	}
}