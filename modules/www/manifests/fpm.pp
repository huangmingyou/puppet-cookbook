class www::fpm{
	package {
		["php5-fpm","php5","php5-cgi","php5-cli","php5-common","php5-curl","php5-gd","php5-imap","php5-mcrypt","php5-mysql","php5-snmp"]:
		ensure => installed;
	}
}
