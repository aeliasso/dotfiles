# Only set this if we haven't set $EDITOR up somewhere else previously.
if [[ -z $EDITOR ]]; then
  export EDITOR='emacs'
fi

# less själv och git (log) läser denna miljövariabel
export LESS='--ignore-case --long-prompt --RAW-CONTROL-CHARS'

# NPM packages in homedir
export NPM_PACKAGES="$HOME/.npm-packages"

# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH  # delete if you already modified MANPATH elsewhere in your configuration
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# Tell Node about these packages
export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"

export PATH="$HOME/.local/bin:$HOME/.rvm/bin:$NPM_PACKAGES/bin:$PATH"

# http://insanecoding.blogspot.se/2014/04/gcc-49-diagnostics.html
export GCC_COLORS=1
