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

export PATH="/usr/local/bin:$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/

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
