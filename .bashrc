[ -f ~/.aliases ] && source ~/.aliases
[ -f ~/.aliases.private ] && source ~/.aliases.private
[ -f ~/.bashrc.functions ] && source ~/.bashrc.functions

# macos only
[ -f ~/.bashrc.macos ] && source ~/.bashrc.macos

# bash-only prompt
export PS1='\u@\[\033[31m\]\h\[\033[0m\]:\w\$ '

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export EDITOR='vim'


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
