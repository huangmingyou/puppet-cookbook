class dnsmasq {
	package {
		"dnsmasq":
		ensure => installed;
	}
	file {
		"/etc/dnsmasq.conf":
		source => "puppet:///module/dnsmasq/dnsmasq.conf";
	}
}
