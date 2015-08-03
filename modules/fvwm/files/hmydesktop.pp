$HOMEDIR="/home/hmy"
$CODEDIR="/home/hmy/github/hmygit/desktop"

package {
	["gtk-theme-switch","gtk2-engines-oxygen","ssh-askpass","wpasupplicant","acpi-support","keynav","fvwm","xfonts-terminus","xfonts-wqy","tmux","rxvt-unicode","fcitx-googlepinyin","ecryptfs-utils","p7zip-full","git-core","dmz-cursor-theme","gnupg-agent"]:
	ensure => installed;
}

File {
	owner => hmy,
	group => hmy,
	mode => 0644,
}
file {
	"$HOMEDIR/.vimrc":
	source => "$CODEDIR/vimrc";
	"$HOMEDIR/.Xresources":
	source => "$CODEDIR/Xresources";
	"$HOMEDIR/.xsession":
	source => "$CODEDIR/xsession";
	"$HOMEDIR/.fvwm":
	ensure => directory;
	"$HOMEDIR/.fvwm/config":
	source => "$CODEDIR/fvwm2rc";
	"$HOMEDIR/.tmux.conf":
	source => "$CODEDIR/tmux.conf";
	"$HOMEDIR/.fonts.conf":
	source => "$CODEDIR/fonts.conf";
	"$HOMEDIR/.bashrc":
	source => "$CODEDIR/bashrc";
	"/etc/apt/sources.list.d/google.list":
	owner => root,
	group => root,
	content => "deb http://dl.google.com/linux/chrome/deb/ stable main\n";

}
