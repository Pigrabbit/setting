source ~/.git-completion.bash

export EDITOR=/usr/bin/vim

# ANSI color codes -----------------------------------------------------------
# https://gist.github.com/chrisopedia/8754917
GREEN='\e[0;32m\]'
B_MAGENTA='\e[1;35m\]'
YELLOW='\e[0;33m\]'
RED='\e[0;31m\]'
CYAN='\e[0;36m\]'
COLOR_END='\[\033[0m\]'


# PROMPT ----------------------------------------------------------------------
TIMESTAMP='\D{%F %a %T}'
GIT_BRANCH=''
if [ $(which vcprompt 2> /dev/null) ]; then
  GIT_BRANCH="\$(vcprompt -f '[%b %r]')"
fi
PS1="${YELLOW}${TIMESTAMP} ${GREEN}\u ${RED}\h ${CYAN}\w ${COLOR_END} ${GIT_BRANCH}\n\$ "
export PS1

# coloring by row
export CLICOLOR=1

export LSCOLORS=ExFxBxDxCxegedabagacad

alias ll='ls -alhF'
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
