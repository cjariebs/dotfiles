[[ -f ~/.profile ]] &&  source ~/.profile
[[ -f ~/.bashrc ]] && source ~/.bashrc

eval $(ssh-agent)

[[ -z "$DISPLAY" && $(tty) = /dev/tty1 ]] && exec startx

# Added by `rbenv init` on Fri Dec 20 12:26:36 EST 2024
eval "$(rbenv init - --no-rehash bash)"
