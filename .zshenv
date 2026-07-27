export HISTFILE=~/.zsh_history
export HISTSIZE=20000
export SAVEHIST=20000
export BAT_THEME="Nord"
export LESSHISTFILE="$HOME/.local/share/less-history"
export PYTHON_HISTORY="$HOME/.local/share/python-history"
export LS_COLORS="$(vivid generate ansi)"
export EDITOR=nvim
export VISUAL=nvim
export FZF_DEFAULT_COMMAND='fd --type f --hidden --exclude .git'
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
  --color=fg:#d8dee9,fg+:#eceff4,bg:#2E3440,bg+:#3b4252
  --color=hl:#81A1C1,hl+:#88C0D0,info:#EBCB8B,marker:#A3BE8C
  --color=prompt:#bf616a,spinner:#D08770,pointer:#B48EAD,header:#8FBCBB
  --color=border:#4C566A,label:#4C566A,query:#D8DEE9
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
