fpath=($ZSH/functions $fpath)

autoload -U $ZSH/functions/*(:t)

HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000

setopt EXTENDED_HISTORY # add timestamps to history
setopt COMPLETE_IN_WORD

setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY # add history incrementally, whatever that means
# Spara inte efterföljande dubletter i historiken
setopt HIST_IGNORE_DUPS
# Spara inte kommandorader som börjar med ett mellanslag i historiken
setopt HIST_IGNORE_SPACE

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
setopt complete_aliases

zle -N newtab

# Fin prompt
autoload -U promptinit
promptinit
prompt zefram
# TODO: användare/root och hosts i olika färger

# Några tecken ska inte behandlas som om de ingick i ord
#export WORDCHARS=${WORDCHARS//[=\/&;<>]}
autoload select-word-style
select-word-style bash

# emacs bindings
bindkey -e

bindkey '^[[3~' delete-char
#bindkey '^[^N' newtab
bindkey '^?' backward-delete-char
# Tabba bakåt mellan förslag med skift+tab
bindkey '^[[Z' reverse-menu-complete

# http://zsh.sourceforge.net/FAQ/zshfaq04.html#l50
setopt AUTO_LIST
unsetopt LIST_AMBIGUOUS

# Ctrl+arrowkeys
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# vterm_printf(){
#     if [ -n "$TMUX" ] && ([ "${TERM%%-*}" = "tmux" ] || [ "${TERM%%-*}" = "screen" ] ); then
#         # Tell tmux to pass the escape sequences through
#         printf "\ePtmux;\e\e]%s\007\e\\" "$1"
#     elif [ "${TERM%%-*}" = "screen" ]; then
#         # GNU screen (screen, screen-256color, screen-256color-bce)
#         printf "\eP\e]%s\007\e\\" "$1"
#     else
#         printf "\e]%s\e\\" "$1"
#     fi
# }
# vterm_cmd() {
#     local vterm_elisp
#     vterm_elisp=""
#     while [ $# -gt 0 ]; do
#         vterm_elisp="$vterm_elisp""$(printf '"%s" ' "$(printf "%s" "$1" | sed -e 's|\\|\\\\|g' -e 's|"|\\"|g')")"
#         shift
#     done
#     vterm_printf "51;E$vterm_elisp"
# }
# vterm_prompt_end() {
#     vterm_printf "51;A$(whoami)@$(hostname):$(pwd)";
# }
# #vterm_set_directory() {
# #    vterm_cmd update-pwd "/-:""$USER""@""$HOSTNAME"":""$PWD/"
# #}
# #autoload -U add-zsh-hook
# #add-zsh-hook -Uz chpwd (){ vterm_set_directory }
# if [[ "$INSIDE_EMACS" = 'vterm' ]]; then
# 	setopt PROMPT_SUBST
# 	PROMPT=$PROMPT'%{$(vterm_prompt_end)%}'
# fi

