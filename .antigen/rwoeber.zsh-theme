git_status() {

  # workdir is dirty
  if ! git diff --quiet 2>/dev/null; then
    echo -n "$ZSH_THEME_GIT_STATUS_WORKDIR_DIRTY"
  fi

  # has untracked files
  local -a flist
  flist=($(git ls-files --others --exclude-standard 2>/dev/null))
  if [ $#flist -gt 0 ]; then
    echo -n "$ZSH_THEME_GIT_STATUS_UNTRACKED_FILES"
  fi

  # index is dirty
  if ! git diff --quiet --cached 2>/dev/null; then
    echo -n "$ZSH_THEME_GIT_STATUS_INDEX_DIRTY"
  fi


  echo -n "$ZSH_THEME_GIT_PROMPT_DIRTY"
}

function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$(git_status)$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

box_name() {
  [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

ZSH_THEME_GIT_PROMPT_PREFIX="[%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}]"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}✔%{$reset_color%}"

ZSH_THEME_GIT_STATUS_WORKDIR_DIRTY="%{$fg[yellow]%}●"
ZSH_THEME_GIT_STATUS_INDEX_DIRTY="%{$fg[cyan]%}●"
ZSH_THEME_GIT_STATUS_UNTRACKED_FILES="%{$fg[red]%}●"


PROMPT='%{$fg[red]%}%(?..✘)%{$reset_color%}$(git_prompt_info)[%B$(box_name)%b:%3~] %(!.%{$fg_bold[red]%}.)%n%#%(!.%{$reset_color%}.) '
