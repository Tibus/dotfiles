# -- ENV

PATH="~/.dotfiles/bin:${PATH}"
export PATH
export EDITOR="atom -w"
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

# Tell grep to highlight matches
export GREP_OPTIONS="--color=auto"

# Docker
export DOCKER_HOST=tcp://127.0.0.1:4243

# Cask
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Android
# export PATH=${PATH}:/Users/leny/.sdk/android/tools:/Users/leny/.sdk/android/platform

# completions
. <(npm completion)
eval "$(gulp --completion=zsh)"
