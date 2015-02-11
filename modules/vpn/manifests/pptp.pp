class vpn::pptp {
package {
        "pptpd":
                ensure => installed;
        }


file {
        "/etc/ppp/pptpd-options":
	source => "puppet:///modules/vpn/pptpd-options";
        "/etc/pptpd.conf":
	source => "puppet:///modules/vpn/pptpd.conf";
        }
}


