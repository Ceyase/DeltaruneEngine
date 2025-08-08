function panel_add(panel, node){
	var node_struct = {};
	node_struct[$ "id"] = node;
	node_struct[$ "x"]  = node.x;
	node_struct[$ "y"]  = node.y;
	array_push(panel.nodes, node_struct);
}