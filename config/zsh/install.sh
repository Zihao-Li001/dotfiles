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
    sudo mkdir -p /etc/apt/keyrings
    wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
    echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
    sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list
    sudo apt update
    sudo apt install -y eza
fi

# Zsh 插件的 Git Submodule 初始化
echo "初始化和更新 Zsh 插件..."
git submodule update --init --recursive

# 创建软链接（symlink）来连接你的 dotfile 和家目录
echo "创建配置文件软链接..."
ln -sf "$(pwd)/.zshrc" "$HOME/.zshrc"

echo "所有配置已同步完成！"
