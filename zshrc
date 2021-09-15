source ~/powerlevel10k/powerlevel10k.zsh-theme

# Plugins
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -Uz compinit && compinit

eval $(thefuck --alias)

eval $(ssh-agent) > /dev/null 2>&1
ssh-add -K > /dev/null 2>&1

# # ZSH Customizations
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
setopt EXTENDED_HISTORY
SAVEHIST=100000
HISTSIZE=50000
# share history across multiple zsh sessions
setopt SHARE_HISTORY
# append to history
setopt APPEND_HISTORY
# # adds commands as they are typed, not at shell exit
# setopt INC_APPEND_HISTORY
# expire duplicates first
setopt HIST_EXPIRE_DUPS_FIRST 
# do not store duplications
setopt HIST_IGNORE_DUPS
#ignore duplicates when searching
setopt HIST_FIND_NO_DUPS
# removes blank lines from history
setopt HIST_REDUCE_BLANKS

# ALIASES
alias ll='ls -lrt'
alias la='ls -alrth'
alias dc='docker compose'
alias gco='git checkout'
alias ff="fzf --ansi --preview-window 'right:60%' --preview 'bat --color=always --style=header,grid --line-range :300 {}'"
alias scripts='cat package.json | jq .scripts'
alias grep='grep --color'

if [ -d ~/bin ]; then
  export PATH=${HOME}/bin:$PATH
fi

export GPG_TTY=$(tty)
export DOCKER_BUILDKIT=1

export TANIUM_COMPOSE_PATH=~/git.corp.tanium.com/tanium/compose

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[[ ! -f ~/.zshrc.local ]] || source ~/.zshrc.local

eval "$(direnv hook zsh)"
