#!/usr/bin/env zsh -f

if [[ -v SHELL_TYPE ]]; then
    echo "INFO: SHELL_TYPE=${SHELL_TYPE}"
else
    echo "ERROR: cannot find SHELL_TYPE"
    exit
fi

git submodule update --init --recursive

# tmux
f=~/.tmux.conf
if [[ -f $f ]]; then
    echo "WARNING: $f already exists"
else
    echo "INFO: $f"
    /bin/ln -sf ~/env/tmux/_tmux.conf $f
fi

# zsh
f=~/.zshrc
if [[ -f $f ]]; then
    echo "WARNING: $f already exists"
else
    echo "INFO: $f"
    /bin/ln -sf ~/env/zsh/_zshrc $f
fi
f=~/.ohmyzsh
if [[ -d $f ]]; then
    echo "WARNING: $f already exists"
else
    echo "INFO: $f"
    git clone git@github.com:ohmyzsh/ohmyzsh.git $f
fi

# vim
f=~/.vimrc
if [[ -f $f ]]; then
    echo "WARNING: $f already exists"
else
    echo "INFO: $f"
    /bin/ln -sf ~/env/vim/_vimrc $f
fi
f=~/.vim/bundle/Vundle.vim
if [[ -d $f ]]; then
    echo "WARNING: $f already exists"
else
    echo "INFO: $f"
    mkdir -p $(dirname $f)
    git clone git@github.com:VundleVim/Vundle.vim.git $f
fi

# shortcut
f=~/.shortcut
if [[ -d $f ]]; then
    echo "WARNING: $f already exists"
else
    echo "INFO: $f"
    /bin/ln -sf ~/env/shortcut/${SHELL_TYPE} $f
fi
