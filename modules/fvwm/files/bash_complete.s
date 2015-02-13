_s ()
{
	local cur
	COMPREPLY=()
	cur=${COMP_WORDS[COMP_CWORD]}
	case "$cur" in 
	*)
	local all=$(cat /home/hmy/.all)
	COMPREPLY=($(compgen -W "${all}" -- ${cur}));;
	esac
	return 0
}
complete -F _s s
complete -F _s g
complete -F _s ping
