# ----------
# Misc
# ----------
set -o emacs
export EDITOR="emacsclient"

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

# ----------
# Rust
# ----------
PATH=$HOME/.cargo/bin:$PATH

PATH=~/.local/bin:~/bin:$PATH
export PATH
