# ----------
# Misc
# ----------
. /etc/bash_completion

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

set -o emacs
export EDITOR="emacsclient"

alias lf="ls -F"
alias ll="ls -al"

# GIT_PS1_SHOWDIRTYSTATE="yes_please"
# GIT_PS1_SHOWSTASHSTATE="yes_please"
# GIT_PS1_SHOWUNTRACKEDFILES="yes_please"
# GIT_PS1_SHOWUPSTREAM="auto"

# ----------
# Julia
# ----------
PATH=$PATH:~/tools/julia/julia-1.2.0/bin

# ----------
# Python
# ----------
# conda is installed via apt:
#   https://www.anaconda.com/rpm-and-debian-repositories-for-miniconda/
# source /opt/conda/etc/profile.d/conda.sh

# ----------
# Node Version Manager - nvm
# ----------
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

# ----------
# Rust
# ----------
export PATH="$HOME/.cargo/bin:$PATH"

PATH=~/.local/bin:~/bin:$PATH
export PATH