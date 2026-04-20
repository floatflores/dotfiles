#
# ~/.bashrc
#
# Set up for statship
eval "$(starship init bash)"
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='exa'
alias cl='clear'
alias suspend="systemctl suspend"
alias hibernate="systemctl hibernate"
# alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

load-yubikey() {
    ssh-add -e /usr/lib/libfido2.so
    ssh-add -K
}
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
