class vpn::ipsec {
package {
        "openswan":
        ensure => installed;
        }

file {
        "/etc/ipsec.conf":
        mode => 0644,
        content => template("vpn/ipsec.conf.erb");
        "/etc/ipsec.secrets":
        mode => 0644,
        content => template("vpn/ipsec.secrets.erb");
        }
}


class vpn::l2tp {
include ipsec
	package {
        "xl2tpd":
        ensure => installed;
}

file {
        "/etc/ppp/options.xl2tpd":
        mode => 0644,
        content => template("vpn/options.xl2tpd.erb");
        "/etc/xl2tpd/xl2tpd.conf":
        mode => 0644,
        content => template("vpn/xl2tpd.conf.erb");

}
}
