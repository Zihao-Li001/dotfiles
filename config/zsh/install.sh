#!/bin/bash

# 判断操作系统
if [[ "$(uname)" == "Darwin" ]]; then
    # macOS
    echo "检测到 macOS，开始安装 Homebrew 和相关工具..."
    # 检查是否安装了 Homebrew，如果没有则安装
    if ! command -v brew &> /dev/null; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi

    # 使用 Homebrew 安装 eza
    echo "安装 eza..."
    brew install eza
elif [[ "$(uname)" == "Linux" ]]; then
    # Ubuntu/Linux
    echo "检测到 Linux，开始安装 apt 相关工具..."
    # 安装 eza
    echo "安装 eza..."
    sudo apt update
    sudo apt install -y gpg
    # ... (这里是之前给你的 eza apt 仓库安装脚本) ...
    # 注意: 如果 eza 已经进入了你正在使用的 Ubuntu 版本的默认 apt 仓库，你只需要 sudo apt install eza 即可。
    # 建议先尝试 `sudo apt install eza`，如果失败再使用完整的脚本。
fi

# Zsh 插件的 Git Submodule 初始化
echo "初始化和更新 Zsh 插件..."
git submodule update --init --recursive

# 创建软链接（symlink）来连接你的 dotfile 和家目录
echo "创建配置文件软链接..."
ln -sf "$(pwd)/.zshrc" "$HOME/.zshrc"

echo "所有配置已同步完成！"
