[[ -f ~/.config/theme.zsh ]] && source ~/.config/theme.zsh

_has() { (( $+commands[$1] )) }

export GPG_TTY=$TTY

if _has vivid && [[ -n $VIVID_THEME ]]; then
  export LS_COLORS="$(vivid generate $VIVID_THEME)"
fi

export FZF_DEFAULT_COMMAND='fd --type f --hidden --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type d --hidden --exclude .git'
export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always {}' --bind 'ctrl-/:change-preview-window(down|hidden|)'"
export FZF_DEFAULT_OPTS='--border="rounded" --border-label="" --preview-window="border-rounded"
  --prompt="> " --marker=">" --pointer="◆" --separator="─" --scrollbar="│"'
if (( ${+THEME[bg]} )); then
  FZF_DEFAULT_OPTS+=" --color=fg:${THEME[fg]},fg+:${THEME[fg]},bg:${THEME[bg]},bg+:${THEME[bg_alt]}
  --color=hl:${THEME[blue]},hl+:${THEME[cyan]},info:${THEME[yellow]},marker:${THEME[green]}
  --color=prompt:${THEME[red]},spinner:${THEME[orange]},pointer:${THEME[purple]},header:${THEME[fg_dim]}
  --color=border:${THEME[border]},label:${THEME[muted]},query:${THEME[fg]}"
fi

autoload -Uz compinit
if [[ -n ${ZDOTDIR:-$HOME}/.zcompdump(#qN.mh+24) ]]; then
  compinit
else
  compinit -C
fi
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zmodload zsh/complist
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

setopt EXTENDED_GLOB SHARE_HISTORY HIST_IGNORE_ALL_DUPS HIST_FIND_NO_DUPS \
       EXTENDED_HISTORY HIST_REDUCE_BLANKS HIST_VERIFY HIST_IGNORE_SPACE

bindkey -v
bindkey "^?" backward-delete-char
export KEYTIMEOUT=1
WORDCHARS=${WORDCHARS//[\/]}

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd 'p' edit-command-line

alias l="eza --long --all --git --icons=auto"
alias ls="eza"
alias tree="eza --tree"
alias find="fd"
alias cat="bat --paging=never"
alias bcat="/bin/cat"
alias sed="sd"
alias vi="nvim"
alias vic="nvim --clean"
alias diff="diff --color"
alias cloc="eza --code"
alias python="python3"
alias -g R='| rg'
alias -g L='| less'
alias glp="git log --pretty=format:'%ad (%h) by %an, %s' --date=iso"

if   _has pbcopy; then alias -g C='| pbcopy'
elif _has wl-copy; then alias -g C='| wl-copy'
fi

gco() {
  git branch --all | grep -v HEAD | /usr/bin/sed 's#.*/##' | fzf | xargs git checkout
}

take() {
  mkdir -p "$1" && cd "$1"
}

_has starship && eval "$(starship init zsh)"
_has zoxide   && eval "$(zoxide init zsh --cmd cd)"
_has direnv   && eval "$(direnv hook zsh)"
_has fzf      && eval "$(fzf --zsh)"

[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

_source_first() {
  local f
  for f in "$@"; do
    [[ -r $f ]] && { source "$f"; return }
  done
}
_source_first \
  /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh \
  /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh \
  /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh \
  /usr/share/zsh/site-contrib/zsh-autosuggestions/zsh-autosuggestions.zsh
_source_first \
  /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh \
  /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh \
  /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh \
  /usr/share/zsh/site-contrib/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
