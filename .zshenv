export HISTFILE=~/.zsh_history
export HISTSIZE=20000
export SAVEHIST=20000
export BAT_THEME="Solarized (dark)"
export LESSHISTFILE="$HOME/.local/share/less-history"
export PYTHON_HISTORY="$HOME/.local/share/python-history"
export LS_COLORS="$(vivid generate solarized-dark)"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#657B83"
export EDITOR=nvim
export VISUAL=nvim
export FZF_DEFAULT_COMMAND='fd --type f --hidden --exclude .git'
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
  --color=fg:#eee8d5,fg+:#fdf6e3,bg:#002b36,bg+:#073642
  --color=hl:#268bd2,hl+:#2aa198,info:#b58900,marker:#859900
  --color=prompt:#dc322f,spinner:#cb4b16,pointer:#6c71c4,header:#93a1a1
  --color=border:#839496,label:#657b83,query:#eee8d5
  --border="rounded" --border-label="" --preview-window="border-rounded" --prompt="> "
  --marker=">" --pointer="◆" --separator="─" --scrollbar="│"'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type d --hidden --exclude .git'
export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always {}' --bind 'ctrl-/:change-preview-window(down|hidden|)'"

typeset -U path

path=(
  "$HOME/.local/bin"
  "$HOME/.local/qmk_toolchains_linuxX64/bin"
  "$HOME/.local/qmk_flashutils_linuxX64"
  $path
)

export PATH
