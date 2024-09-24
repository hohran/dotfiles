#!/bin/sh
alias zsh-update-plugins="find "$ZDOTDIR/plugins" -type d -exec test -e '{}/.git' ';' -print0 | xargs -I {} -0 git -C {} pull -q"
alias mix="alsamixer -c0 -m"

# Colorize output
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
alias ls="ls --color=auto"

# Confirm overwrite
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"
