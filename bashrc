#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
BOLD="\[$(tput bold)\]"
RESET="\[$(tput sgr0)\]"
PS1="${BOLD}[Jones] \h \W -> ${RESET}"




