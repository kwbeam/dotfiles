hostname=`hostname`

if [ -f ~/bin/dotfiles/bash/env.$hostname ];
then
  env_filename=~/bin/dotfiles/bash/env.$hostname
else
  env_filename=~/bin/dotfiles/bash/env
fi

. $env_filename
. ~/bin/dotfiles/bash/config
. ~/bin/dotfiles/bash/aliases
. ~/bin/dotfiles/bash/git-completion.bash