# ===========================
# Plugins
# ===========================
ZSH_PLUGINS_DIR="$HOME/dotfiles/config/zsh/.zsh/plugins"

# zsh-autosuggestions
if [ -f "${ZSH_PLUGINS_DIR}/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then
    source "${ZSH_PLUGINS_DIR}/zsh-autosuggestions/zsh-autosuggestions.zsh"
    # echo "zsh-autosuggestions loaded"
fi

# eza
if [ -d "${ZSH_PLUGINS_DIR}/eza/completions/zsh" ];
then
    fpath=($ZSH_PLUGINS_DIR/eza/completions/zsh $fpath)
    # echo "eze completions loaded"
fi


# Syntax highlighting
if [ -f "${ZSH_PLUGINS_DIR}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then
    source "${ZSH_PLUGINS_DIR}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
    # echo "zsh-syntax-highlighting loaded"
fi

unset ZSH_PLUGINS_DIR
