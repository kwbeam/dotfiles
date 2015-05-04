# Setup homebrew bash completion
if hash brew 2>/dev/null; then
   if [ -f $(brew --prefix)/etc/bash_completion ]; then
     . $(brew --prefix)/etc/bash_completion
   fi
else
   . /etc/bash_completion
fi

# Common bash env
. ~/bin/dotfiles/bash/env

# User-specific bash env
whoami=`whoami`
if [ -f ~/bin/dotfiles/bash/env.$whoami ];
then
  . ~/bin/dotfiles/bash/env.$whoami
else
  . ~/bin/dotfiles/bash/env.generic
fi

. ~/bin/dotfiles/bash/config
. ~/bin/dotfiles/bash/aliases
