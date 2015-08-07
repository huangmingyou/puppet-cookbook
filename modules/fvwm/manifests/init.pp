class fvwm {
package {
        ["gtk-theme-switch","gtk2-engines-oxygen","ssh-askpass","slim","wpasupplicant","acpi-support","keynav","fvwm","xfonts-terminus","xfonts-wqy","tmux","rxvt-unicode","fcitx-googlepinyin","ecryptfs-utils","p7zip-full","git-core","dmz-cursor-theme","gnupg-agent","dbus-x11","dbus"]:
        ensure => installed;
}

File {
	owner => hmy,
	group => hmy,
}

$username="hmy"
file {
	"/home/${username}/.fvwm2rc":
	source => "puppet:///modules/fvwm/fvwm2rc";

	"/home/${username}/.Xresources":
	source => "puppet:///modules/fvwm/Xresources";

	"/home/${username}/.tmux.conf":
	source => "puppet:///modules/fvwm/tmux.conf";

	"/home/${username}/.fonts.conf":
	source => "puppet:///modules/fvwm/fonts.conf";

	"/home/${username}/.bashrc":
	source => "puppet:///modules/fvwm/bashrc";

	"/etc/bash_completion.d/bash_complete.s":
	source => "puppet:///modules/fvwm/bash_complete.s";
	"/etc/apt/sources.list.d/google-chrome.list":
	source => "puppet:///modules/fvwm/google-chrome.list";
	}
}
