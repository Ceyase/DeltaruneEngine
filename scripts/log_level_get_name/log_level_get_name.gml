function log_level_get_name(level){
	switch(level){
		case loglevel.info:
			return "Info";
		case loglevel.debug:
			return "Debug";
		case loglevel.error:
			return "Error";
		case loglevel.warn:
			return "Warn";
	}
}