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
autoload -U compinit
compinit

eval "$(starship init zsh)" # starship prompt
eval "$(zoxide init zsh)" # zoxide

export GPG_TTY=$(tty)
export LANG=en_US.UTF-8
export PROMPT_EOL_MARK=""
export BAT_THEME="base16"

alias l="exa --icons -la"
alias ls="exa --icons"
alias cat="bat --paging=never"
alias cd="z"
alias sudo="doas"
alias zathrua="zathura"
alias fetch="neofetch && sleep 10"
alias upgkbd="sudo kmonad kmonad/keymap/apple_laptop.kbd"
alias firefox="firefox-bin"
alias diff="diff --color=always"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
