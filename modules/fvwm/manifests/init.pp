class fvwm {
package {
        ["gtk-theme-switch","gtk2-engines-oxygen","ssh-askpass","wpasupplicant","acpi-support","keynav","fvwm","xfonts-terminus","xfonts-wqy","tmux","rxvt-unicode","fcitx-googlepinyin","ecryptfs-utils","p7zip-full","git-core","dmz-cursor-theme","gnupg-agent"]:
        ensure => installed;
}


file {
	"/home/${username}/.fvwm2rc":
	owner => $username,
	group => $username,
	source => "puppet:///modules/fvwm/fvwm2rc";

	"/home/${username}/.Xresources":
	owner => $username,
	group => $username,
	source => "puppet:///modules/fvwm/Xresources";

	"/home/${username}/.tmux.conf":
	owner => $username,
	group => $username,
	source => "puppet:///modules/fvwm/tmux.conf";

	"/home/${username}/.fonts.conf":
	owner => $username,
	group => $username,
	source => "puppet:///modules/fvwm/fonts.conf";

	"/home/${username}/.bashrc":
	owner => $username,
	group => $username,
	source => "puppet:///modules/fvwm/bashrc";
	}
}
