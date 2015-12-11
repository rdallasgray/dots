export PATH="/usr/local/bin:/usr/local/mysql/bin:/usr/local/sbin:/Users/robertdallasgray/bin:$PATH"
export PATH="/Applications/Emacs.app/Contents/MacOS:$PATH"
export PATH="/Users/robertdallasgray/Documents/Code/git-wip:$PATH"

export EDITOR="/usr/local/bin/emacsclient"
export ALTERNATE_EDITOR="/usr/local/bin/emacs"
export EMACS="/usr/local/bin/emacs"

export RSENSE_HOME="/usr/local/Cellar/rsense/0.3/libexec"

export PATH="/Users/robertdallasgray/.cask/bin:$PATH"

# Tell ls to be colourful
export CLICOLOR=1

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

[[ -s /Users/robertdallasgray/.nvm/nvm.sh ]] && . /Users/robertdallasgray/.nvm/nvm.sh # This loads NVM
nvm use v4

[ -n "$BASH_VERSION" ] || [ -n "$ZSH_VERSION" ] || return
source /usr/local/share/chruby/chruby.sh
chruby ruby-2.1.3

if [[ $INSIDE_EMACS ]]; then
    bind 'set bell-style none'
    bind 'set horizontal-scroll-mode on'
    bind 'set completion-display-width 0'
    bind 'set completion-query-items 30'
    bind 'set print-completions-horizontally on'
    bind 'set page-completions off'
fi

# Prevent Berkshelf choking on UTF-8 characters
export LC_CTYPE="UTF-8"
