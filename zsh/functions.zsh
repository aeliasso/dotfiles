# Funktion från skriptsamlingen som extraherar ljudströmmen från mediabehållare (ex. MP4/WebM från YouTube)
aextract () { ffmpeg -i "$1" -vn -acodec copy -- "$2"; }

# TODO: gör något hållbart av den här
process () { ps -fp $(pgrep -d, -x "$1"); }

# Skapa ett 16 tecken långt lösenord
genpw () { dd if=/dev/urandom bs=16 count=1 2>/dev/null | base64 | cut -c-16; }

# Söv datorn via D-BUS
söv () { dbus-send --system --print-reply --dest="org.freedesktop.UPower" /org/freedesktop/UPower org.freedesktop.UPower.Suspend; }

