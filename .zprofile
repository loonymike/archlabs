# .zprofile
# sourced by zsh when used as a login shell

# automatically run startx when logging in on tty1
# [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx -- vt1 &>/dev/null

if [[ -z $DISPLAY && $XDG_VTNR -eq 2 ]]; then
    exec startx ~/.xinitrc openbox
elif [[ -z $DISPLAY && $XDG_VTNR -eq 3 ]]; then
    exec startx ~/.xinitrc i3
fi
