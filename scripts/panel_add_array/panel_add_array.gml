function panel_add_array(panel, node_array){
	for(var i = 0;i < array_length(node_array);i++){
		var node = node_array[i];
		panel_add(panel, node);
	}
}