# ~/.zshrc - Main zsh configuration file
# Import sub-module from this directory: ~/.zsh

ZSH_MODULE_DIR="$HOME/dotfiles/config/zsh/.zsh"

# ===
# Plugins & Config 
# ===
export EZA_CONFIG_DIR="$HOME/dotfiles/config/eza/eza_theme"


OS_TYPE="$(uname -s)"
if [ -d "$ZSH_MODULE_DIR" ]; then
    # _env
    if [[ "$OS_TYPE" == "Darwin" ]]; then
        source "${ZSH_MODULE_DIR}/_env_mac"
        source "${ZSH_MODULE_DIR}/_init_mac"
    elif [[ "$OS_TYPE" == "Linux" ]]; then
        source "${ZSH_MODULE_DIR}/_env_linux"
        source "${ZSH_MODULE_DIR}/_init_linux"
    fi
    # _alias
	source "${ZSH_MODULE_DIR}/_alias"
    # _options
    source "${ZSH_MODULE_DIR}/_options"
    # _plugins
    source "${ZSH_MODULE_DIR}/_plugins"
fi

eval "$(zoxide init zsh)"

unset ZSH_MODULE_DIR
unset OS_TYPE
