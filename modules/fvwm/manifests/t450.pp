class fvwm::t450 {
	file {
		"/etc/systemd/system/slock.service":
		source => puppet:///modules/fvwm/slock.service";
	}
}
