# Så här ligger det till:
#
# /etc/profile.d/autojump.sh laddar /etc/profile.d/autojump.{bash,zsh} beroende på skal.
# /etc/profile laddar allt i /etc/profile.d/
# /etc/zsh/zprofile laddar /etc/profile
# /etc/zsh/zprofile körs endast i login-skal. Barn-skal ärver satta miljövariabler men inte definierade funktioner.
#
# Källa: zsh(1): STARTUP/SHUTDOWN FILES
#
# Därför måste /etc/profile.d/autojump.zsh laddas manuellt i en användardefinierad zsh-konfigurationsfil.

if [ -f /etc/profile.d/autojump.zsh ]; then
    source /etc/profile.d/autojump.zsh
elif [ -f /usr/share/autojump/autojump.zsh ]; then
    source /usr/share/autojump/autojump.zsh
fi
