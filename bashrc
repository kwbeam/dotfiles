. /etc/bash_completion

# ----------
# Misc
# ----------
export EDITOR="emacsclient"
export TERM=tmux-256color

# ----------
# Python
# ----------
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
. $(pyenv root)/completions/pyenv.bash
# Don't use this right now -- slow
#eval "$(pipenv --completion)"

# ----------
# Node Version Manager - nvm
# ----------
export NVM_DIR="$HOME/.nvm"
# This is slow. Is there a way I can append --no-use and still have Emacs stuff work?
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
# Don't use this right now -- slow
#[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

# ----------
# Arduino
# ----------
export ARDUINO_PATH=/usr/local/arduino
PATH=$PATH:$ARDUINO_PATH

PATH=~/.local/bin:~/bin:$PATH
export PATH

# ----------
# Aliases
# ----------
alias lf="ls -F"
alias ll="ls -al"
alias enw="emacs -nw"
alias ecnw="emacsclient -nw"

# Colors from http://wiki.archlinux.org/index.php/Color_Bash_Prompt
# misc
NO_COLOR='\e[0m' #disable any colors
# regular colors
BLACK='\e[0;30m'
RED='\e[0;31m'
GREEN='\e[0;32m'
YELLOW='\e[0;33m'
BLUE='\e[0;34m'
MAGENTA='\e[0;35m'
CYAN='\e[0;36m'
WHITE='\e[0;37m'
# emphasized (bolded) colors
EBLACK='\e[1;30m'
ERED='\e[1;31m'
EGREEN='\e[1;32m'
EYELLOW='\e[1;33m'
EBLUE='\e[1;34m'
EMAGENTA='\e[1;35m'
ECYAN='\e[1;36m'
EWHITE='\e[1;37m'

GIT_PS1_SHOWDIRTYSTATE="yes_please"
GIT_PS1_SHOWSTASHSTATE="yes_please"
GIT_PS1_SHOWUNTRACKEDFILES="yes_please"
GIT_PS1_SHOWUPSTREAM="auto"

#PS1="\[$BLUE\](\u@\h) \[$GREEN\]\w \[$BLUE\]\$ "
