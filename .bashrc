export PATH="/usr/local/sbin:/Users/robertdallasgray/.bin/:/Users/robertdallasgray/.cask/bin:/usr/local/opt/awscli@1/bin:$NODE_BIN:$PATH"

export LC_CTYPE="UTF-8"

export EDITOR="/usr/local/bin/emacsclient"
export ALTERNATE_EDITOR="/usr/local/bin/emacs"
export EMACS="/usr/local/bin/emacs"

source /usr/local/etc/bash_completion

source /usr/local/share/chruby/chruby.sh
chruby ruby-3.1.2

if [[ $INSIDE_EMACS ]]; then
    bind 'set bell-style none'
    bind 'set horizontal-scroll-mode on'
    bind 'set completion-display-width 0'
    bind 'set print-completions-horizontally on'
    bind 'set page-completions off'
fi
