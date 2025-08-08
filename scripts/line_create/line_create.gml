function line_create(x,y,width,length,angle){
	var line = instance_create_depth(x,y,0,obj_line);
	line.image_xscale = length;
	line.image_yscale = width;
	line.image_angle = angle;
	line.node_type = "line";
	return line;
}
