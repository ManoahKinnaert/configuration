#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export CLICOLOR=1
export PS1='\u@\h:\[\e[36m\]\w\[\e[0m\]\$ '
export EDITOR='vim'

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# pyenv config
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"
eval "$(pyenv virtualenv-init -)"
