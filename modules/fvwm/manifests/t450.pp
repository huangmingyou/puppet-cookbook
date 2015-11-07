class fvwm::t450 {
$username="hmy"


	file {
		"/etc/systemd/system/slock.service":
		source => puppet:///modules/fvwm/slock.service";
		"/home/${username}/.asoundrc":
		content => "defaults.pcm.card=0\n";
		"/etc/modprobe.d/thinkpad-t450s.conf":
		content => "options snd_hda_intel index=1,0\n";
	}
	exec {
		"enable slock":
		exec => "systemctl enable slock.service";
	}
	package {
		"firmware-iwlwifi":
		ensure => installed;
	}
	
}
