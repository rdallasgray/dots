export EDITOR="/usr/local/bin/emacsclient"
export ALTERNATE_EDITOR="/usr/local/bin/emacs"
export EMACS="/usr/local/bin/emacs"

source /usr/local/etc/bash_completion

if [[ $INSIDE_EMACS ]]; then
    bind 'set bell-style none'
    bind 'set horizontal-scroll-mode on'
    bind 'set completion-display-width 0'
    bind 'set print-completions-horizontally on'
    bind 'set page-completions off'
fi
