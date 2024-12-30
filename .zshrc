autoload -Uz compinit promptinit
compinit
promptinit
#this will set the default prompt to the walters theme(taken from arch wiki)
prompt walters

#make plugins work
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#set vim keybidings
bindkey -v

# aliases
alias up="cd .."
