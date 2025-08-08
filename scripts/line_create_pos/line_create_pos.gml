function line_create_pos(x1,y1,x2,y2,width){
	var length = sqrt((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2));
	var dx = x2 - x1;
	var dy = y2 - y1;
	var radian = arctan2(dy, dx);
	var angle = radtodeg(radian);
	var line = line_create(x1,y1,width,length,-angle);
	return line;
}