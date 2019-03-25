. /etc/bash_completion

# ----------
# Misc
# ----------
set -o emacs
export EDITOR="emacsclient"
# export TERM=tmux-256color

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
alias wrc="sudo nmcli device disconnect wlan0; sudo nmcli device connect wlan0"

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

# GIT_PS1_SHOWDIRTYSTATE="yes_please"
# GIT_PS1_SHOWSTASHSTATE="yes_please"
# GIT_PS1_SHOWUNTRACKEDFILES="yes_please"
# GIT_PS1_SHOWUPSTREAM="auto"