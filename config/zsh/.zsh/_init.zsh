# ===========================
# Prompt
# ===========================
# Use Starship prompt
eval "$(starship init zsh)"

# ===========================
# Plugins
# ===========================
# zsh-autosuggestions
# Make sure the plugin is cloned to ~/.zsh/plugins/zsh-autosuggestions
if [ -f "$HOME/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then
    source "$HOME/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
fi

# Syntax highlighting
# Make sure zsh-syntax-highlighting is installed in /usr/share/zsh-syntax-highlighting
if [ -f "/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then
    source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# ===========================
# Extra Initializations
# ===========================
# OpenFOAM
if [ -f "$HOME/opt/OpenFOAM-v2306/etc/bashrc" ]; then
    source "$HOME/opt/OpenFOAM-v2306/etc/bashrc"
fi

# Conda initialization
if command -v conda >/dev/null 2>&1; then
    __conda_setup="$('/home/lzh/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
    if [ $? -eq 0 ]; then
        eval "$__conda_setup"
    elif [ -f "/home/lzh/miniconda3/etc/profile.d/conda.sh" ]; then
        source "/home/lzh/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/lzh/miniconda3/bin:$PATH"
    fi
    unset __conda_setup
fi

