#!/bin/bash -e

#Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Install ZSH
brew install zsh zsh-completions

#Configure ZSH as default shell
chsh -s $(which zsh)

#Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Install some Brew Formulas
brew install jq kubernetes-cli neovim tmux

#Create links
/bin/ln -s $HOME/dotfile/tmux.conf $HOME/.tmux.conf
/bin/ln -s $HOME/dotfile/zshrc $HOME/.zshrc
/bin/ln -s $HOME/dotfile/init.vim $HOME/.config/nvim/init.vim

#Install awscli
brew install python
/usr/local/bin/pip install awscli


