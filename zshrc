setopt promptsubst

# Load the prompt theme system
autoload -U promptinit
promptinit

# Use the wunjo prompt theme
prompt wunjo

# Add paths
export PATH=${PATH}:/usr/local/bin

# Load custom aliases
. ~/.zsh/aliases

# Colours
export LSCOLORS="ExGxBxDxCxEgEdbxgxcxd"
export GREP_OPTIONS="--color"

# Fix history
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=$HISTSIZE

