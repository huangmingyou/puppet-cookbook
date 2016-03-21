class vpn::ikev2 {
package {
        "strongswan":
        ensure => installed;
        }
file {
        "/etc/ipsec.conf":
        content => template("vpn/ikev2.conf.erb");
}

