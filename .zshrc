#!/bin/zsh

if [ ! -S ~/.ssh/ssh_auth_sock ]; then
  eval "$(ssh-agent)"
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
ssh-add -l > /dev/null || ssh-add

if [ "$(tty)" = "/dev/tty1" ]; then
  exec dbus-run-session sway
fi

export HISTFILE=~/.zsh_history
export HISTSIZE=20000
export SAVEHIST=20000
export BAT_THEME="Nord"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#4C566A"
export LESSHISTFILE="$HOME/.local/share/less-history"
export PYTHON_HISTORY="$HOME/.local/share/python-history"

path+=(
"$HOME/.local/bin"
"$HOME/.local/qmk_toolchains_linuxX64/bin"
"$HOME/.local/qmk_flashutils_linuxX64"
"$path[@]")
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
eval "$(direnv hook zsh)"

alias l="lsd -la"
alias ls="lsd"
alias tree="lsd --tree"
alias cat="bat --paging=never"
alias bcat="/bin/cat"
alias cd="z"
alias vi="nvim"
alias sudo="doas"
alias cloc="tokei"
alias diff="diff --color=always"
alias glp="git log --pretty=format:'%ad (%h) by %an, %s' --date=iso"

take() {
    mkdir -p $1
    z $1
}

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
