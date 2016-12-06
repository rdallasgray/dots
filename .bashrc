export EDITOR="/usr/local/bin/emacsclient"
export ALTERNATE_EDITOR="/usr/local/bin/emacs"
export EMACS="/usr/local/bin/emacs"

export PATH="/Users/robertdallasgray/.cask/bin:$PATH"

source /usr/local/share/chruby/chruby.sh

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

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
