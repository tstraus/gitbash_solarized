#!/bin/bash
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

get_hostname() {
  export SHORTNAME=${HOSTNAME}
}

function user_color {
  id | grep "Admin" > /dev/null
  RETVAL=$?
  if [[ $RETVAL == 0 ]]; then
    usercolor="[0;32m";
  else
    usercolor="[0;32m";
  fi
}

function settitle() {
  u=${USERNAME}
  h="$u@${HOSTNAME}"
  echo -ne "\e]2;$h\a\e]1;$h\a";
}

# Set directory colors
eval `dircolors ~/.dir_colors`

# Set prompt and window title
inputcolor='[0;37m'
cwdcolor='[0;34m'
host_name='[1;31m'
user_color
PROMPT_COMMAND='settitle; get_hostname; history -a;'
export PS1="\n\[\e${cwdcolor}\][$PWD]\n\[\e${usercolor}\][\u]\[\e${host_name}\][$HOSTNAME]\[\e${inputcolor}\]\$(parse_git_branch)\[\033[00m\] $ "

# Aliases
alias ls='ls --color'
alias grep='grep -n --color'

c() {
    cd "$1"
    pwd
    ls
 }
 alias l="ls -la --color"
 alias python="winpty python.exe"
