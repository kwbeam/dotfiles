. /etc/bash_completion

# ----------
# Misc
# ----------
set -o emacs
export EDITOR="emacsclient"
export TERM=tmux-256color

# ----------
# Python
# ----------
# conda is installed via apt:
#   https://www.anaconda.com/rpm-and-debian-repositories-for-miniconda/
source /opt/conda/etc/profile.d/conda.sh

# ----------
# Node Version Manager - nvm
# ----------
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion


PATH=~/.local/bin:~/bin:$PATH
export PATH

# ----------
# Aliases
# ----------
alias lf="ls -F"
alias ll="ls -al"
alias arl="autorandr -l laptop"
alias arm="autorandr -l monitor"
alias wrc="sudo nmcli device disconnect wlan0; sudo nmcli device connect wlan0"

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