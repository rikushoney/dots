#!/usr/bin/env bash

anyenv install --init
mkdir -p $(anyenv root)/plugins
git clone https://github.com/znz/anyenv-update.git $(anyenv root)/plugins/anyenv-update

anyenv install pyenv
anyenv install nodenv
