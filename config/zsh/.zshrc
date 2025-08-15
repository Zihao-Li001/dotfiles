# ~/.zshrc - Main zsh configuration file
# Import sub-module from this directory: ~/.zsh

ZSH_MODULE_DIR="$HOME/dotfiles/config/zsh/.zsh"

OS_TYPE="$(uname -s)"

if [ -d "$ZSH_MODULE_DIR" ]; then
    # _env
	source "${ZSH_MODULE_DIR}/_env.zsh"
    if [[ "$OS_TYPE" == "Drawin" ]]; then
        source "{ZSH_MODULE_DIR}/_env_mac.zsh"
    elif [[ "$OS_TYPE" == "Linux" ]]; then
        source "${ZSH_MODULE_DIR}/_env_linux.zsh"
    fi
    # _alias
	source "${ZSH_MODULE_DIR}/_alias.zsh"
    # _init
	source "${ZSH_MODULE_DIR}/_init.zsh"
    # _options
    source "${ZSH_MODULE_DIR}/_options.zsh"
    # _plugins
    source "${ZSH_MODULE_DIR}/_plugins.zsh"
fi

unset ZSH_MODULE_DIR
