class vpn::ipsec {
$IPSECPASS="youpass"
package {
        "openswan":
        ensure => installed;
        }

file {
        "/etc/ipsec.conf":
        content => template("vpn/ipsec.conf.erb");
        "/etc/ipsec.secrets":
        content => template("vpn/ipsec.secrets.erb");
        }
}

