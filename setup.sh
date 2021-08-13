#!/usr/bin/env bash

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cp "${script_dir}/.gitconfig" ${HOME}/
cp "${script_dir}/.zshrc" ${HOME}/
cp "${script_dir}/.p10k.zsh" ${HOME}/
git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"

mkdir -p "${HOME}/.config"
cp -r "${script_dir}/nvim" "${HOME}/.config"

curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim \
    --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim --headless +PlugInstall +qa

git clone https://github.com/anyenv/anyenv "${HOME}/.anyenv"
eval "${HOME}/.anyenv/bin/anyenv init"
