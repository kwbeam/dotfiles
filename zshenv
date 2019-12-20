# ----------
# Misc
# ----------
set -o emacs
export EDITOR="emacsclient"

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

# ----------
# Julia
# ----------
PATH=$PATH:~/tools/julia/julia-1.2.0/bin

# ----------
# Node Version Manager - nvm
# ----------
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

# ----------
# Python
# ----------
# conda is installed via apt:
#   https://www.anaconda.com/rpm-and-debian-repositories-for-miniconda/
source /opt/conda/etc/profile.d/conda.sh

# ----------
# Rust
# ----------
PATH=$HOME/.cargo/bin:$PATH

PATH=~/.local/bin:~/bin:$PATH
export PATH
