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
alias la='ls -la'

# Safety first
alias mv='mv -i'
alias cp='cp -i'

# Felstavningar
alias pytohn=python
alias pytohn2=python2
alias pytohn3=python3

# Diverse
alias md='mkdir'

# Detta behövs faktiskt:
alias sudo='sudo '

# Genväg till screen-sessioner
alias programmera='screen -q -D -R programmera'
alias administrera='screen -q -D -R administrera'

# https://github.com/kyamagu/mexopencv/issues/74
alias matlab='LD_PRELOAD=/usr/lib/libfreetype.so matlab'
