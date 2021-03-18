fpath=(~/.zsh $fpath)
[[ -a ~/.aliases ]] && source ~/.aliases
[[ -a ~/.aliases.private ]] && source ~/.aliases.private
[[ -a ~/.bashrc.functions ]] && source ~/.bashrc.functions

export EDITOR='vim'

setopt NO_CASE_GLOB
setopt CORRECT

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM="verbose"
export GIT_PS1_STATESEPARATOR=""
export GIT_PS1_DESCRIBE_STYLE="branch"
export GIT_PS1_SHOWCOLORHINTS=1
[[ -a ~/.zsh/git-prompt.sh ]] && source ~/.zsh/git-prompt.sh
setopt PROMPT_SUBST

zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash

local user_color='green'; [ $UID -eq 0 ] && user_color='red'
local return_status='%K{white}%B%F{red}%(?..%?)%f%b%k'
local clock='%F{blue}[%D{%H:%M:%S}]%f'
PROMPT='%K{black}%F{yellow}%4~%f%k %F{$user_color}%#%f '
PROMPT2='%F{red}\ %f'
RPROMPT='${return_status}$(__git_ps1)${clock}'

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _match _approximate _prefix
zstyle ':completion:*' completions 1
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' glob 1
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'r:|[._-]=** r:|=**'
zstyle ':completion:*' max-errors 1
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' substitute 1
zstyle :compinstall filename '/Users/criebs/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
