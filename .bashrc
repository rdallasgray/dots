export PATH="/usr/local/bin:/usr/local/mysql/bin:/usr/local/sbin:/Users/robertdallasgray/bin:$PATH"
export PATH="/Applications/Emacs.app/Contents/MacOS:$PATH"

export EDITOR="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient"
export ALTERNATE_EDITOR="/Applications/Emacs.app/Contents/MacOS/Emacs"

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
nvm use 0.8.7

[ -n "$BASH_VERSION" ] || [ -n "$ZSH_VERSION" ] || return
source /usr/local/share/chruby/chruby.sh
chruby ruby

if [[ $INSIDE_EMACS ]]; then
    bind 'set bell-style none'
    bind 'set horizontal-scroll-mode on'
    bind 'set completion-display-width 0'
    bind 'set print-completions-horizontally on'
    bind 'set page-completions off'
fi
