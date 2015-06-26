class www::squid {
	package {
		"squid3":
		ensure => installed;
	}
	file {
		"/etc/squid3/squid.conf":
		source => "puppet:///modules/www/squid.conf";
	}
}
