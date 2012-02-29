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

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
alias vim='reattach-to-user-namespace /usr/local/bin/vim'
alias vi='reattach-to-user-namespace /usr/local/bin/vim'
alias tmux='TERM=screen-256color-bce tmux'

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home/

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="cloud"

## Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
## Example format: plugins=(rails git textmate ruby lighthouse)
source $ZSH/oh-my-zsh.sh
