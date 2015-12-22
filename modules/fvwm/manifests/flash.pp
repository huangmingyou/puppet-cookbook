class fvwm::flash{
	file {
		"/usr/lib/mozilla/plugins";
		ensure => directory;
		"/usr/lib/mozilla/plugins/libflashplayer.so":
		source => "puppet:///modules/fvwm/libflashplayer.so";
	}
	
}
