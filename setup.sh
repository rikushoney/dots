#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cp $SCRIPT_DIR/.gitconfig $HOME
cp $SCRIPT_DIR/.zshrc $HOME
cp $SCRIPT_DIR/.p10k.zsh $HOME
git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"

mkdir -p "$HOME/.config"
cp -r $SCRIPT_DIR/nvim "$HOME/.config"

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

git clone https://github.com/anyenv/anyenv "$HOME/.anyenv"
$HOME/.anyenv/bin/anyenv init
