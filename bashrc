# ----------
# Shell
# ----------
. /etc/bash_completion

PATH=$PATH:~/bin
PATH=$PATH:~/.local/bin

alias lf="ls -F"
alias ll="ls -al"

export EDITOR="nvim"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

setxkbmap -option caps:swapescape

# --------------
# Python: pyenv
# --------------
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# -----------------
# JavaScript:  nvm
# -----------------
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

# ----------
# Rust
# ----------
PATH="$HOME/.cargo/bin:$PATH"

# ----------
# VASM
# ----------
PATH=$PATH:$HOME/tools/vasm/vasm

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

GIT_PS1_SHOWDIRTYSTATE="yes_please"
GIT_PS1_SHOWSTASHSTATE="yes_please"
GIT_PS1_SHOWUNTRACKEDFILES="yes_please"
GIT_PS1_SHOWUPSTREAM="auto"

# PS1="\[$BLUE\](\u@\h) \[$WHITE\]\w\[$GREEN\]\$(__git_ps1) \[$WHITE\]\$ "
# PS1="\[$BLUE\](\u@\h) \[$WHITE\]\w\[$GREEN\] \[$WHITE\]$ "

export PATH
