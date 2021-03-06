# oh-my-zsh theme from tibus/dotfiles
# started at 01/11/2015

prompt_user_style() {
    if [[ $UID -eq 0 ]] then
        echo "%{$fg_bold[red]%}"
    else
        echo "%{$fg_no_bold[yellow]%}"
    fi
}

_lineup=$'\e[1A'
_linedown=$'\e[1B'

# Prompt
PROMPT='
$(prompt_user_style)%n\
$fg_no_bold[magenta] @\
$fg_no_bold[white] %m\
$(prompt_user_style) :\
$fg_no_bold[cyan] %40<(…)<%~%<<%{$reset_color%}
$(prompt_user_style)➜ %{$reset_color%}'

RPROMPT='%{${_lineup}%}$(dock-compose-status)$(git_prompt_info)$(leny_git_prompt_status)%{${_linedown}%}%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_no_bold[green]%}git %{$fg_no_bold[yellow]%}› %{$fg_no_bold[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_SEPARATOR=""
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_no_bold[magenta]%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg_no_bold[yellow]%}%{*%G%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_no_bold[green]%}%{+%G%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg_no_bold[red]%}%{-%G%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg_bold[red]%}%{⟁%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[blue]%}%{≠%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg_bold[purple]%} %{↓%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg_bold[cyan]%} %{↑%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_no_bold[white]%}%{*%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%} %{✓%G%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""

ZSH_THEME_DOCKER_PROMPT_PREFIX="%{$fg_no_bold[green]%}docker %{$fg_no_bold[yellow]%}›"
ZSH_THEME_DOCKER_PROMPT_NO_MACHINE="%{$fg_no_bold[red]%} no machine"
ZSH_THEME_DOCKER_CONTAINERS_COUNT_PREFIX="%{$fg_no_bold[cyan]%}"
ZSH_THEME_DOCKER_CONTAINERS_COUNT_SUFFIX="%{$fg_no_bold[magenta]%}containers up"
ZSH_THEME_DOCKER_NO_CONTAINERS="%{$fg_bold[yellow]%} no %{$fg_no_bold[magenta]%}container up"
ZSH_THEME_DOCKER_PROMPT_SUFFIX=" %{$fg_no_bold[yellow]%}- "
