class vpn::chap {
	file {
		"/etc/ppp/chap-secrets":
		source => "puppet:///modules/vpn/chap-secrets";
	}
}
