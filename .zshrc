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

typeset -A ZSH_HIGHLIGHT_STYLES

export HISTFILE=~/.zsh_history
export HISTSIZE=20000
export SAVEHIST=20000
export LANG=en_GB.UTF-8
export GPG_TTY=$(tty)

if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  export BAT_THEME="base16"
  unset ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE
  alias vi="nvim --clean"
else
  export BAT_THEME="Solarized (dark)"
  export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#657B83"
  alias vi="nvim"
fi

path+=(
"$HOME/.local/bin"
"$HOME/.local/qmk_flashutils_linuxX64"
"$HOME/.local/qmk_toolchains_linuxX64/bin"
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
eval  "$(direnv hook zsh)"

alias l="lsd -la"
alias ls="lsd"
alias tree="lsd --tree"
alias cat="bat --paging=never"
alias cd="z"
alias sudo="doas"
alias cloc="tokei"
alias diff="diff --color=always"
alias fetch="clear && printf '\n' && pfetch && sleep 10"
alias glp="git log --pretty=format:'%ad (%h) by %an, %s' --date=iso"

take () {
  mkdir -p $1
  cd $1
}

source /usr/share/zsh/site-functions/zsh-autosuggestions.zsh
source /usr/share/zsh/site-functions/zsh-syntax-highlighting.zsh
