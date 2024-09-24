#!/bin/sh
# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

# Source
plug "$HOME/.config/zsh/aliases.zsh"
plug "$HOME/.config/zsh/exports.zsh"

# Plugins
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"
plug "zsh-users/zsh-history-substring-search"

# Load and initialise completion system
autoload -Uz compinit
compinit

# history
HISTFILE=~/.zsh_history

# Prompt
omp_theme=/home/jan/.config/oh-my-posh/themes/pure.omp.json
eval "$(oh-my-posh init zsh --config ${omp_theme})"

# pyenv setup
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# npm
export PATH=$PATH:./node_modules/.bin

# Keybinds
bindkey '^ ' autosuggest-accept
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

bindkey '' history-substring-search-up
bindkey '^J' history-substring-search-down
# amro
# avit
# blueish
# catppuccin
# catppuccin_frappe
# cinnamon
# di4am0nd
# multiverse-neon
# pure
