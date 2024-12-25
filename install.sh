#!/bin/bash

if env | grep -e "http_proxy" -e "https_proxy"; then
    # Install zsh
    sudo -E apt-get update
    sudo -E apt-get install -y zsh fzf
    # Install oh-my-zsh
    sh -c "$(curl -fsSL https://install.ohmyz.sh/)"
else
    # Install zsh
    sudo apt-get update
    sudo apt-get install -y zsh fzf
    # Install oh-my-zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab

# Copy custom zshrc if exists
if [ -f ~/dotfiles/.zshrc ]; then
    cp ~/dotfiles/.zshrc ~/.zshrc
fi
