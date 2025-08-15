# ===========================
# Plugins
# ===========================
ZSH_PLUGINS_DIR="$HOME/dotfiles/config/zsh/.zsh/plugins"
# zsh-autosuggestions
if [ -f "${ZSH_PLUGINS_DIR}/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then
    source "${ZSH_PLUGINS_DIR}/zsh-autosuggestions/zsh-autosuggestions.zsh"
    echo "zsh-autosuggestions"
fi

# Syntax highlighting
if [ -f "${ZSH_PLUGINS_DIR}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then
    source "${ZSH_PLUGINS_DIR}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
    echo "syntax-highlight"
fi
