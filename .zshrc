#
# User configuration sourced by interactive shells
#


# {{{ === ENV
export ENV="DEV"
# }}}

# {{{ === ZIM 
# Define zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh
# }}}

# {{{ === ALIAS
alias tx='tmux'
alias nv='nvim'
alias gf='git diff'
alias gb='git branch'
alias gp='git push origin'
alias gm='git commit -m'
alias gs='git status'
alias ss='source env/bin/activate'
alias dd='deactivate'
alias cc='clear'
alias dt='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' # dotfiles for .files config
alias cpwd="pwd | tr -d '\n' | pbcopy" # Copy pwd to clipboard
# }}}

# {{{ === PATH
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
export fpath=(/usr/local/share/zsh-completions $fpath)
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="$HOME/go/bin/:$PATH"
# }}}

# {{{ === SETTING
# Allows ‘>’ redirection to truncate existing files. EX: pbpaste > file.txt
setopt clobber
setopt no_share_history
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
# }}}

# {{{ === MAPPING KEY 
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^e' edit-command-line

bindkey -v # use like vim editor
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^r' history-incremental-search-backward
# }}}

# {{{ === SOURCE 
source /usr/local/Cellar/fzf/0.18.0/shell/completion.zsh
source /usr/local/Cellar/fzf/0.18.0/shell/key-bindings.zsh
# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

[ -n "$PS1" ] && sh ~/.local/share/nvim/plugged/snow/shell/snow_light.sh

# }}}
