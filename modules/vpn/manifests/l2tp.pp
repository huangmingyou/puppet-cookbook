class vpn::l2tp {
include vpn::ipsec
	package {
        "xl2tpd":
        ensure => installed;
}

file {
        "/etc/ppp/options.xl2tpd":
        mode => 0644,
	source => "puppet:///modules/vpn/options.xl2tpd";
        "/etc/xl2tpd/xl2tpd.conf":
        mode => 0644,
	source => "puppet:///modules/vpn/xl2tpd.conf";

}
}
