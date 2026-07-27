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

setopt EXTENDED_GLOB
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt EXTENDED_HISTORY
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
setopt HIST_IGNORE_SPACE

bindkey -v
bindkey "^?" backward-delete-char
export KEYTIMEOUT=1
WORDCHARS=${WORDCHARS//[\/]}

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd 'p' edit-command-line

alias l="lsd -la"
alias ls="lsd"
alias tree="lsd --tree"
alias find="fd"
alias cat="bat --paging=never"
alias bcat="/bin/cat"
alias ps="procs"
alias sed="sd"
alias vi="nvim"
alias sudo="doas"
alias cloc="tokei"
alias diff="diff --color"
alias -g G='| rg'
alias -g L='| less'
alias -g C='| wl-copy'
alias glp="git log --pretty=format:'%ad (%h) by %an, %s' --date=iso"

gco() {
  git branch --all | grep -v HEAD | sed 's#.*/##' | fzf | xargs git checkout
}

take() {
  mkdir -p "$1" && cd "$1"
}

eval "$(starship init zsh)"
eval "$(zoxide init zsh --cmd cd)"
eval "$(direnv hook zsh)"
eval "$(fzf --zsh)"

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
