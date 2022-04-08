#!/usr/bin/env zsh
echo "RUNNING $0"
set -e
if [[ ! IS_INSTALLED_ENV ]]; then
    exit
fi

if [[ ! -f ~/.zshrc ]]; then
    ln -s ~/env/zsh/_zshrc ~/.zshrc
fi

if [[ ! -d ~/.ohmyzsh ]]; then
    git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.ohmyzsh
fi

export IS_INSTALLED_ENV=1
