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

