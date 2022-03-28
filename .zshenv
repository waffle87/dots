export MOZ_ENABLE_WAYLAND=1
typeset -U PATH path
path=("$HOME/.local/bin" "$path[@]")
export PATH
export BEMENU_BACKEND=wayland

