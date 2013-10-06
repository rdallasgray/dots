export PATH="/usr/local/bin:/usr/local/mysql/bin:/usr/local/sbin:/Users/robertdallasgray/bin:$PATH"

export EDITOR="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient"
export ALTERNATE_EDITOR="/Applications/Emacs.app/Contents/MacOS/Emacs"
alias emacs="$ALTERNATE_EDITOR"

export PATH=/usr/local/pgsql-9.1/bin:$PATH
export PGDATA=/usr/local/pgsql/data

export RSENSE_HOME="/usr/local/Cellar/rsense/0.3/libexec"

export PATH="/Users/robertdallasgray/.cask/bin:$PATH"

source "Users/robertdallasgray/.aws"

# Tell ls to be colourful
export CLICOLOR=1

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

export COFFEELINT_CONFIG="/Users/robertdallasgray/coffeelint.json"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

[[ -s /Users/robertdallasgray/.nvm/nvm.sh ]] && . /Users/robertdallasgray/.nvm/nvm.sh # This loads NVM
nvm use 0.8.7

[ -n "$BASH_VERSION" ] || [ -n "$ZSH_VERSION" ] || return
source /usr/local/share/chruby/chruby.sh
chruby ruby
