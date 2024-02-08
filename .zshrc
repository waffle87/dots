#!/bin/zsh

if test -z "${XDG_RUNTIME_DIR}"; then
    export XDG_RUNTIME_DIR=/tmp/${UID}-runtime-dir
    if ! test -d "${XDG_RUNTIME_DIR}"; then
        mkdir "${XDG_RUNTIME_DIR}"
        chmod 0700 "${XDG_RUNTIME_DIR}"
    fi
fi

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
export LANG=en_GB.UTF-8
export LC_CTYPE=en_US.UTF-8
export BAT_THEME="Nord"
export GPG_TTY=$(tty)

path+=("$HOME/.local/bin" "$path[@]")
path+=('/usr/local/texlive/2023/bin/x86_64-linux')
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

alias l="eza --icons -la"
alias ls="eza --icons"
alias cat="bat --paging=never"
alias cd="z"
alias sudo="doas"
alias cloc="tokei"
alias diff="diff --color=always"
alias fetch="clear && printf '\n' && pfetch && sleep 10"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
