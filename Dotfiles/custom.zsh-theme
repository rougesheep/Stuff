function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo $; fi
}

#PROMPT='%(!.%{$fg_bold[red]%}.%{$fg_bold[white]%}%n@)%m %{$fg_bold[blue]%}%(!.%1~.%~) $(git_prompt_info)%_$(prompt_char)%{$reset_color%} '
PROMPT='%{$fg_bold[red]%}%n%{$fg_bold[grey]%}@%{$fg_bold[red]%}%m%{$fg_bold[white]%}:%{$fg_bold[yellow]%}%0~ $(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=") "
