export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

PATH=/usr/local/bin:$PATH

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    source $(brew --prefix)/etc/bash_completion.d/git-completion.bash
    source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
fi

if [ -f ~/.local_bashrc ]; then
  source ~/.local_bashrc
fi

if [ -d ~/bin ]; then
  PATH=${HOME}/bin:$PATH
fi

# EXPORTS
export PS1='\[\e[32m\]\w\[\e[91m\]$(__git_ps1) \[\e[93m\]$ \[\e[0m\]'

# ALIASES
alias ll='ls -lrt'
alias la='ls -alrth'
alias ressh='eval $(ssh-agent); ssh-add'
alias dc='docker-compose'

function run_last_command {
  eval $(history 2 | head -n 1 | awk '{for (i=2; i<=NF; i++) printf $i" "}')
  history -d $(history 1 | awk '{ print $1 }')
}
