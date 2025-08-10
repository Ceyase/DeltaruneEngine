function instance_destroy_array(instance_array){
	for(var i = 0;i < array_length(instance_array);i++){
		var ins = instance_array[i];
		instance_destroy(ins);
	}
}