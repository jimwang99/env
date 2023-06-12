export SHELL_TYPE=OSX_WORK

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/homebrew/Caskroom/miniconda/base/bin/conda
    eval /opt/homebrew/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias vi='vim'
alias vdiff='vimdiff --noplugin'

alias ln='ln -s'
alias du='du -m -d 1'

# shortcut
alias go='set cmd (python3 ~/env/scripts/shortcut.py go $argv[1]); and set argv; and eval $cmd'
alias run='set cmd (python3 ~/env/scripts/shortcut.py run $argv[1]); and set argv; and eval $cmd'
alias add='set cmd (python3 ~/env/scripts/shortcut.py add $argv[1]); and set argv; and eval $cmd'

# grep
alias rgrep='grep -R'
alias igrep='grep -i'
