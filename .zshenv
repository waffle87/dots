#!/bin/zsh

if test -z "${XDG_RUNTIME_DIR}"; then
    export XDG_RUNTIME_DIR=/tmp/${UID}-runtime-dir
    if ! test -d "${XDG_RUNTIME_DIR}"; then
        mkdir "${XDG_RUNTIME_DIR}"
        chmod 0700 "${XDG_RUNTIME_DIR}"
    fi
fi

typeset -U PATH path
path=("$HOME/.local/bin" "$path[@]")
export PATH
export BEMENU_BACKEND=wayland
export EDITOR=nvim
export MOZ_ENABLE_WAYLAND=1
