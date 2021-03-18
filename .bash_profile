[[ -f ~/.profile ]] &&  source ~/.profile
[[ -f ~/.bashrc ]] && source ~/.bashrc

eval $(ssh-agent)

[[ -z "$DISPLAY" && $(tty) = /dev/tty1 ]] && exec startx
