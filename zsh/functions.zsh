# Funktion från skriptsamlingen som extraherar ljudströmmen från mediabehållare (ex. MP4/WebM från YouTube)
aextract () { ffmpeg -i "$1" -vn -acodec copy -- "$2"; }

# TODO: gör något hållbart av den här
process () { ps -fp $(pgrep -d, -x "$1"); }

# Söv datorn via D-BUS
söv () { dbus-send --system --print-reply --dest="org.freedesktop.UPower" /org/freedesktop/UPower org.freedesktop.UPower.Suspend; }

# Expected behaviour of apt-cache search
apt-search () { apt-cache search $1 | grep -i $1 }
