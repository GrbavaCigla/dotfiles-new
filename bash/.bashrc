

if test -n "$SSH_TTY";then
	_PS1="\[\e[0;1;91m\]\u\[\e[0;97m\]@\[\e[0;93m\]\H\[\e[m\] \[\e0"
fi

if test "$USER" = 'root'; then
	_PS1="$_PS1\[\e[0;91m\]#\[\e0"
fi

_PS1="$_PS1\[\e[0;94m\]\w\[\e[m\] \[\e[0;91m\]❯\[\e[0;93m\]❯\[\e[0;92m\]❯\[\e[m\] \[\e0"

PS1="$_PS1"
export GPG_TTY=$(tty) 
export HISTFILE="/home/$USER/.history/.bash"
[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion
