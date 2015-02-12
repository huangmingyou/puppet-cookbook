class dnsmasq {
	package {
		"dnsmasq":
		ensure => installed;
	}
	file {
		"/etc/dnsmasq.conf":
		source => "puppet:///modules/dnsmasq/dnsmasq.conf";
	}
}
