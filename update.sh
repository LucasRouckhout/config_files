#!/bin/sh

I3_CONFIG=$HOME/.config/i3/config
NVIM_CONFIG=$HOME/.config/nvim/init.vim
ALACRITTY_CONFIG=$HOME/.config/alacritty/alacritty.yml
ZSHRC_CONFIG=$HOME/.zshrc

cp $I3_CONFIG i3/
cp $NVIM_CONFIG nvim/
cp $ALACRITTY_CONFIG alacritty/
cp $ZSHRC_CONFIG zsh/
