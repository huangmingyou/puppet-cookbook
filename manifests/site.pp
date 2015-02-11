# huangmingyou@xunyou.com
# 2015-02-11
Exec { 
	path => "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin" ,
	refreshonly =>true,
	}
File {
        ensure => present,
        mode => 0644, owner => root, group => root,
}

