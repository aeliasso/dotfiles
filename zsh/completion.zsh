# matches case insensitive for lowercase
#zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# Gör att Zsh inte litar på sin cache vid autocompletion
# http://unix.stackexchange.com/questions/2179/rebuild-auto-complete-index-or-whatever-its-called
zstyle ":completion:*:commands" rehash 1
