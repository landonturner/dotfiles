export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
#export LSCOLORS=ExFxBxDxCxegedabagacad

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# EXPORTS
export PS1='\[\e[32m\]\w\[\e[91m\]$(__git_ps1) \[\e[93m\]$ \[\e[0m\]'

# ALIASES
alias ll='ls -lrt'
alias la='ls -alh'


function run_last_command {
  eval $(history 2 | head -n 1 | awk '{for (i=2; i<=NF; i++) printf $i" "}')

  history -d $(history | tail -n 1 | awk '{ print $1 }')
}
