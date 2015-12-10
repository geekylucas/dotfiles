# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
#setopt appendhistory autocd
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/lchan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source /usr/local/opt/chruby/share/chruby/chruby.sh
export PATH=/usr/local/sbin:/usr/local/bin:$PATH
chruby ruby-2.2.1

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="cloud"

## Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
## Example format: plugins=(rails git textmate ruby lighthouse)
source $ZSH/oh-my-zsh.sh

#alias tmux='TERM=screen-256color-bce tmux'
alias vi=vim
vim()
{
  # Save current stty options.
  local STTYOPTS="$(stty -g)"
 
  # Disable intercepting of ctrl-s and ctrl-q as flow control.
  stty stop '' -ixoff -ixon
 
  # Execute vim.
  vim_command "$@"
 
  # Restore saved stty options.
  stty "$STTYOPTS"
}
 
vim_command()
{
  if (( $+commands[reattach-to-user-namespace] )); then
    # See: https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard
    command reattach-to-user-namespace vim "$@"
  else
    command vim "$@"
  fi
}

export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/lchan/.docker/boot2docker-vm
export DOCKER_TLS_VERIFY=1

# Default Java Home
# http://mgrebenets.github.io/mobile%20ci/2015/02/15/install-java-on-mac-os-x/
[[ -z "$JAVA_VERSION" ]] && JAVA_VERSION=1.7
[[ -s /usr/libexec/java_home ]] && export JAVA_HOME=$(/usr/libexec/java_home -v $JAVA_VERSION)

# node.js
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
nvm use --silent v0.12.7

# golang
export GOPATH=~/code/go
export PATH=$PATH:$GOPATH/bin
