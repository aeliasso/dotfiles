# Hindra mig från att oavsiktligt avsluta det sista fönstret i en screen-session
# med C-d.

if [ "$TERM" = "screen" ]; then
   setopt ignoreeof
fi
