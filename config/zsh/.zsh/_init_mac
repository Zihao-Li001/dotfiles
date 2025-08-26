# Shell 工具初始化脚本
#
# Starship (跨平台终端提示符)
eval "$(starship init zsh)"

# zsh-autosuggestions (命令自动建议)
# 请确保已通过 Homebrew 或其他方式安装
#if [ -f "$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then
#  source "$HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
#fi

# >>> conda initialize >>>
# !! 以下代码块由 'conda init' 管理 !! [cite: 24]
__conda_setup="$('/Users/lzh/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/lzh/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/lzh/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/lzh/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
