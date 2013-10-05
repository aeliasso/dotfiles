# Only set this if we haven't set $EDITOR up somewhere else previously.
if [[ -z $EDITOR ]]; then
  export EDITOR='emacs'
fi

# less själv och git (log) läser denna miljövariabel
export LESS='--ignore-case --long-prompt --RAW-CONTROL-CHARS'

export PATH="$HOME/bin:$PATH"
