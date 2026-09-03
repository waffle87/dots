typeset -U path

path=(
  "/opt/homebrew/bin"
  "$HOME/.local/bin"
  "$HOME/.local/qmk_toolchains_macosARM64/bin"
  "$HOME/.local/qmk_flashutils_macosARM64"
  $path
)

export PATH
export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000
export BAT_THEME="OneHalfDark"
export LESSHISTFILE="$HOME/.local/share/less-history"
export PYTHON_HISTORY="$HOME/.local/share/python-history"
export LS_COLORS="$(vivid generate one-dark)"
export EDITOR=nvim
export VISUAL=nvim
export GPG_TTY=$(tty)
export FZF_DEFAULT_COMMAND='fd --type f --hidden --exclude .git'
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
  --color=fg:#c8ccd4,fg+:#c8ccd4,bg:#282c34,bg+:#353b45
  --color=hl:#61afef,hl+:#56b6c2,info:#e5c07b,marker:#98c379
  --color=prompt:#e06c75,spinner:#d19a66,pointer:#c678dd,header:#abb2bf
  --color=border:#3e4451,label:#545862,query:#c8ccd4
  --border="rounded" --border-label="" --preview-window="border-rounded" --prompt="> "
  --marker=">" --pointer="◆" --separator="─" --scrollbar="│"'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type d --hidden --exclude .git'
export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always {}' --bind 'ctrl-/:change-preview-window(down|hidden|)'"
