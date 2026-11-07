T="$HOME/.config/yadm/templates"
OS=$(uname -s | tr '[:upper:]' '[:lower:]')

seed() {  # seed <template relative to $T> <destination>
    [ -f "$T/$1" ] || return 0
    [ -e "$2" ] && return 0
    mkdir -p "$(dirname "$2")"
    cp "$T/$1" "$2"
    echo "Seeded $2: edit it for this machine"
}
