function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo $; fi
}

#PROMPT='%(!.%{$fg_bold[126]%}.%{$fg_bold[white]%}%n@)%m %{$fg_bold[blue]%}%(!.%1~.%~) $(git_prompt_info)%_$(prompt_char)%{$reset_color%} '
PROMPT='%B%{$FG[126]%}%n%{$fg[white]%}%b@%B%{$FG[126]%}%m%{$fg[white]%}:%{$fg[yellow]%}%0~%b $(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=") "
