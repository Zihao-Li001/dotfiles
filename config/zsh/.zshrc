# ~/.zshrc - Main zsh configuration file
# Import sub-module from this directory: ~/.zsh

ZSH_MODULE_DIR="$HOME/dotfiles/config/zsh/.zsh"

if [ -d "$ZSH_MODULE_DIR" ]; then
	source "${ZSH_MODULE_DIR}/_env.zsh"
	source "${ZSH_MODULE_DIR}/_alias.zsh"
	source "${ZSH_MODULE_DIR}/_init.zsh"
  source "${ZSH_MODULE_DIR}/_options.zsh"
fi

unset ZSH_MODULE_DIR
