class pptp {
package {
        "pptpd":
                ensure => installed;
        }


file {
        "/etc/ppp/pptpd-options":
        content =>"name pptpd\nms-dns 8.8.8.8\nproxyarp\nnodefaultroute\nlock\nnobsdcomp\n",
        mode => 0644;
        "/etc/pptpd.conf":
        mode => 0644,
        content =>"option /etc/ppp/pptpd-options\nlogwtmp\nlocalip 10.0.1.1\nremoteip 10.0.1.234-238\n";
        "/etc/ppp/chap-secrets":
        content =>"username pptpd password123 *\n",
        mode => 0644;

        }

service {
        "pptpd":
        ensure => running;
	}
}


class ipsec {
package {
        "openswan":
        ensure => installed;
        }

file {
        "/etc/ipsec.conf":
        mode => 0644,
        content => template("vpn/ipsec.conf.erb")
        "/etc/ipsec.secrets":
        mode => 0644,
        content => template("vpn/ipsec.secrets.erb")
        }
}


class l2tp {
	package {
        "xl2tpd":
        ensure => installed;
}

file {
        "/etc/ppp/options.xl2tpd":
        mode => 0644,
        content => template("vpn/options.xl2tpd.erb")
        "/etc/xl2tpd/xl2tpd.conf":
        mode => 0644,
        content => template("vpn/xl2tpd.conf.erb")

}
service {
        "xl2tpd":
        ensure => running;
	}
}
