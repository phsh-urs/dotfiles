#!/bin/zsh

# thanks Arch and gentoo wiki contributors

# Completions {{{
autoload -Uz compinit promptinit
compinit
promptinit

zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b' 
# }}}

# Command Correction
setopt correctall

# History {{{
export HISTSIZE=2000
export HISTFILE="$HOME/.zshistory"
export SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups
setopt hist_ignore_space # does not record commands passed with a space at start 
#}}}

# miscellanous {{{
setopt autocd # cd to a directory when typing directory name only in prompt
prompt walters
bindkey -v #set vim keybidings
# }}}
#make plugins work
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# aliases
alias up="cd .."
alias l="ls"
alias lo="ls -l"
alias la="ls -a"
