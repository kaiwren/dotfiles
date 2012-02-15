## Take Dark Blood. Add a blend of Molokai colors + minimal awesomeness.
## kitallis, 2011-2012

## Helpers
function check_for_rvmrc {
  if [ -e `pwd`/.rvmrc ]; then ~/.rvm/bin/rvm-prompt; fi;
}

function user_computer {
  echo "%{$fg[red]%}[%{\e[1;33m%}%n%{$reset_color%}%{\e[31m%} at %{\e[0;35m%}%m%{$reset_color%}%{$fg[red]%}]"
}

function git_info {
  echo "%{$(git_prompt_info)%}%(?,,%{$fg[red]%}[%{$fg_bold[white]%}%?%{$reset_color%}%{$fg[red]%}])"
}

function current_directory {
  echo "%{$fg[blue]%}[%{\e[32m%}%~%{$reset_color%}%{$fg[blue]%}]"
}

function rvm_info {
  echo "%{$reset_color%} %{$fg[red]%}$(check_for_rvmrc)%{$reset_color%}"
}

function prompt_char {
  echo "⇒% "
}

## Prompts
PROMPT=$'$(user_computer) $(git_info) $(current_directory) \n $(prompt_char) %{$reset_color%} '
PS2=$' %{$fg[red]%}|⇒%  %{$reset_color%} '

RPROMPT='$(rvm_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}[%{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[red]%}] "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}⚡%{$reset_color%}"