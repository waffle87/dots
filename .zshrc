#!/bin/zsh

if [ "$(tty)" = "/dev/tty1" ]; then
  exec dbus-run-session sway
fi

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
bindkey "^?" backward-delete-char
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle :compinstall filename '/home/jack/.zshrc'
autoload -U compinit promptinit
compinit
promptinit; prompt gentoo
zstyle ':completion::complete:*' use-cache 1

export GPG_TTY=$(tty)
export LANG=en_US.UTF-8
export PROMPT_EOL_MARK=""
eval "$(starship init zsh)"
alias l="exa --icons -la"
alias ls="exa --icons"
alias sudo="doas"
alias ememrge="emerge"
alias fetch="neofetch && sleep 10"
alias upgkbd="sudo kmonad kmonad/keymap/apple_laptop.kbd"
alias firefox="firefox-bin"
alias diff="diff --color=always"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
