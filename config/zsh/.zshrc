# ~/.zshrc - Main zsh configuration file
# Import sub-module from this directory: ~/.zsh

ZSH_MODULE_DIR="$HOME/dotfiles/config/zsh/.zsh"

OS_TYPE="$(uname -s)"
if [ -d "$ZSH_MODULE_DIR" ]; then
    # _env
    if [[ "$OS_TYPE" == "Darwin" ]]; then
        source "${ZSH_MODULE_DIR}/_env_mac.zsh"
        source "${ZSH_MODULE_DIR}/_init_mac.zsh"
    elif [[ "$OS_TYPE" == "Linux" ]]; then
        source "${ZSH_MODULE_DIR}/_env_linux.zsh"
        source "${ZSH_MODULE_DIR}/_init_linux.zsh"
    fi
    # _alias
	source "${ZSH_MODULE_DIR}/_alias.zsh"
    # _options
    source "${ZSH_MODULE_DIR}/_options.zsh"
    # _plugins
    source "${ZSH_MODULE_DIR}/_plugins.zsh"
fi

unset ZSH_MODULE_DIR
unset OS_TYPE
