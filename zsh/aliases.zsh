# Färgad ls och grep
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# ls-varianter
alias l='ls -l'
alias ll='ls -lh'
alias la='ll -a'
alias ltr='ll -atr'

# Safety first
alias mv='mv -i'
alias cp='cp -i'

# Felstavningar
alias pytohn=python
alias pytohn2=python2
alias pytohn3=python3

## Diverse
# Make directory(s) and cd into the last (because I tend to put -p before the
# path name more often than after)
function md () {
    mkdir $@ && cd "${@: -1}"
}

# What should be the default behavior of cp
alias copy='/bin/cp --interactive --recursive --no-dereference --preserve=mode,timestamps,links,xattr --no-preserve=ownership --sparse=always --one-file-system'

# Its finally possible to hide the annoying banner in ffmpeg tools!
alias ffmpeg='ffmpeg -hide_banner'
alias ffplay='ffplay -hide_banner'
alias ffprobe='ffprobe -hide_banner'
alias ffserver='ffserver -hide_banner'

alias e='emacsclient -n'
alias ec='emacsclient --create-frame --no-wait --alternate-editor=""'


# Quiet gdb's copyright babble
alias gdb='gdb -q'
