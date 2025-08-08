function log_init(template){
	global.log_template = template;
	global.log_level	= loglevel.debug;
}
enum loglevel{
	info,
	warn,
	debug,
	error,
}