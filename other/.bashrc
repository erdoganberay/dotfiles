#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -lA'
alias l='ls -CF'
alias grep='grep --color=auto'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# prompt
set_prompt() {
    local exit_code=$?

    local green="\[\e[38;2;57;255;20m\]"
    local yellow="\[\e[38;2;218;165;32m\]"
    local reset="\[\e[0m\]"

    local symbol
    if [ $exit_code -eq 0 ]; then
        symbol="\[\e[38;2;61;122;69m\]❯${reset}"
    else
        symbol="\[\e[38;2;178;34;34m\]❯${reset}"
    fi

    PS1="${green}\u@\h${reset} ${yellow}\w${reset}\n${symbol} "
}

PROMPT_COMMAND=set_prompt
