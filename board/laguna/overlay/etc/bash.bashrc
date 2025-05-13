
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

if [ "`id -u`" -eq 0 ]; then
	export PS1='\u@\h:\w # '
else
	export PS1='\u@\h:\w $ '
fi

export PATH=$PATH:/opt/msp/bin
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

export LD_LIBRARY_PATH=/opt/msp/lib