class dnsmasq {
	package {
		"dnsmasq":
		ensure => installed;
	}
->
	file {
		"/etc/dnsmasq.conf":
		require => Package["dnsmasq"],
		source => "puppet:///modules/dnsmasq/dnsmasq.conf";
	}
}
