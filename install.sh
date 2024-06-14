#!/bin/bash

# Install zsh
sudo apt update
sudo apt install -y zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Copy custom zshrc if exists
if [ -f ~/dotfiles/.zshrc ]; then
    cp ~/dotfiles/.zshrc ~/.zshrc
fi

# Set zsh as the default shell
chsh -s $(which zsh)
