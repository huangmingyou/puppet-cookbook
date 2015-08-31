class www::nginx {
	package {
		["nginx-full","php5-fpm","php5","php5-cgi","php5-cli","php5-common","php5-curl","php5-gd","php5-imap","php5-mcrypt","php5-mysql","php5-snmp","subversion"]:
		ensure => installed;
	}
	file {
		"/etc/nginx/nginx.conf":
		content => template("www/nginx.conf.erb");
	}
}
