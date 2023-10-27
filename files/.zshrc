export ZSH=/Users/mjanjic/.oh-my-zsh

# https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="mjanjic"

# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
# COMPLETION_WAITING_DOTS="true"
# HIST_STAMPS="mm/dd/yyyy" # "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# ZSH_CUSTOM=/path/to/new-custom-folder


plugins=(docker git z)
source $ZSH/oh-my-zsh.sh

# User configuration

# iTerm2 shell integrations
# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# export MANPATH="/usr/local/man:$MANPATH"
# export LANG=en_US.UTF-8 # language environment

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias rake='noglob rake'
alias cat='bat -p'

# git work
alias todays-work='git log --all --since=6am --format="* %s" --author="$(git config --global user.name)" --reverse -- | pbcopy'
alias yesterdays-work='git log --all --since=yesterday.6am --until=6am --format="* %s" --author="$(git config --global user.name)" --reverse -- | pbcopy'

# current weather
alias weather='f() { curl wttr.in/$1 };f'

RBENV_PATH="$HOME/.rbenv/bin"
OPENSSL_PATH="/opt/homebrew/opt/openssl@1.1/bin"

export PATH="$RBENV_PATH:$OPENSSL_PATH:$PATH"

export SSH_AUTH_SOCK=$HOME/.gnupg/S.gpg-agent.ssh

export RANGER_LOAD_DEFAULT_RC=false

export VISUAL=vim
export EDITOR="$VISUAL"
export LC_ALL=en_US.UTF-8

eval "$(rbenv init - zsh)"

#start gpg-agent if it's not up yet
if [ -x "$(command -v gpg-agent)" ] && [ ! "$(pgrep gpg-agent)" ]; then
  gpg-agent --daemon
fi

autoload -Uz compinit
compinit

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh" # This loads nvm

# Completion for kitty
kitty + complete setup zsh | source /dev/stdin

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# bun completions
[ -s "/Users/mjanjic/.bun/_bun" ] && source "/Users/mjanjic/.bun/_bun"
