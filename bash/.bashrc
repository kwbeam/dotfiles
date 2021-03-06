# ---------------------------
# Shell
# ---------------------------
. /etc/bash_completion

PATH=$PATH:~/.local/bin

export VISUAL="nvim"
alias vim=nvim

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

# Workaround for git / pyenv conflict
export GIT_INTERNAL_GETTEXT_TEST_FALLBACKS=1

# ---------------------------
# Python: pyenv
# ---------------------------
export PYENV_ROOT="$HOME/.pyenv"
PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_VIRTUALENV_DISABLE_PROMPT=0
# Note: pyenv is activated at the end of the bashrc

# ---------------------------
# JavaScript:  nvm
# ---------------------------
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

# ---------------------------
# Rust
# ---------------------------
PATH="$HOME/.cargo/bin:$PATH"

{%@@ if profile == "hornburg" @@%}
# ---------------------------
# VASM
# ---------------------------
PATH=$PATH:$HOME/tools/vasm/vasm
{%@@ endif @@%}

# ---------------------------
# Go
# ---------------------------
PATH=$PATH:/usr/local/go/bin

# ---------------------------
# Kubernetes completion
# ---------------------------
source <(kubectl completion bash)

{%@@ if profile == "nsidc-kbeam-484" @@%}
# ---------------------------
# PulseSecure VPN Client
# ---------------------------
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/pulse
{%@@ endif @@%}

# Activate pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export PATH
