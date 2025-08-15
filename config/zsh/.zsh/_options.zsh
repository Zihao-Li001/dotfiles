# Auto Complete
autoload -Uz compinit && compinit
autoload -U colors && colors

# history
setopt share_history
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

# Quick Operation
setopt auto_cd auto_pushd
setopt menu_complete

# Fewer distractions
unsetopt beep nomatch notify
