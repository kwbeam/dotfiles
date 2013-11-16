. ~/bin/dotfiles/git/git-completion.bash
. ~/bin/dotfiles/git/git-prompt.sh

# Common bash env
. ~/bin/dotfiles/bash/env

# Hostname-specific bash env
hostname=`hostname`
if [ -f ~/bin/dotfiles/bash/env.$hostname ];
then
  . ~/bin/dotfiles/bash/env.$hostname
else
  . ~/bin/dotfiles/bash/env.generic
fi

. ~/bin/dotfiles/bash/config
. ~/bin/dotfiles/bash/aliases