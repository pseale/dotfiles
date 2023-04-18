#!/bin/bash

echo 'this file is intended to be copy/pasted from. DO NOT RUN THIS AS A SCRIPT'
echo 'tested on Ubuntu 22.04 in WSL - i.e. a full Ubuntu installation will be different'
exit 1

sudo apt update -y && sudo apt upgrade -y
sudo apt install pkg-config -y
sudo apt-get install build-essential -y
sudo apt install jq -y


echo 'shopt -s histappend' >> ~/.bashrc
echo 'PROMPT_COMMAND="history -a;$PROMPT_COMMAND"' >> ~/.bashrc
echo 'cd ~' >> ~/.bashrc

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
 (echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/p/.profile
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"


# INTERACTIVE PROMPTS
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

brew install gcc
brew install neovim
brew install ripgrep
brew install gh
brew install twitchdev/twitch/twitch-cli 

# INTERACTIVE PROMPTS
gh auth login

# INTERACTIVE (i'm aware I can script this out)
# dump in standard aliases and my name and standard editor
git config --global -e
