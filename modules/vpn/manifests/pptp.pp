class vpn::pptp {
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
}


