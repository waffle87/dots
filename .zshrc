#!/bin/zsh

export HISTFILE=~/.zsh_history
export HISTSIZE=20000
export SAVEHIST=20000
export BAT_THEME="OneHalfDark"
export GPG_TTY=$(tty)
export EDITOR=nvim
export LESSHISTFILE="$HOME/.local/share/less_history"
export PYTHON_HISTORY="$HOME/.local/share/python_history"

path=(
  "/opt/homebrew/bin"
  "$HOME/.local/bin"
  "$HOME/.local/qmk_toolchains_macosARM64/bin"
  "$HOME/.local/qmk_flashutils_macosARM64"
  "$path[@]"
)
export PATH

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

bindkey -v
bindkey "^?" backward-delete-char
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle :compinstall filename '~/.zshrc'
autoload -U compinit && compinit

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

alias l="lsd -la"
alias ls="lsd"
alias tree="lsd --tree"
alias cat="bat --paging=never"
alias vi="nvim"
alias cd="z"
alias diff="diff --color=always"
alias glp="git log --pretty=format:'%ad (%h) by %an, %s' --date=iso"
alias python="python3.13"

take() {
  mkdir $1
  z $1
}

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
