#!/bin/bash

# Install zsh
sudo apt-get update
sudo apt-get install -y zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Copy custom zshrc if exists
if [ -f ~/dotfiles/.zshrc ]; then
    cat ~/dotfiles/.zshrc >> ~/.zshrc
fi
