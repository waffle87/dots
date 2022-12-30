#!/usr/bin/zsh
if [ "$(tty)" = "/dev/tty1" ]; then
  exec dbus-run-session sway
fi
export HISTFILE=~/.zsh_history
export HISTSIZE=20000
export SAVEHIST=20000
export LC_CTYPE=en_US.UTF-8
export GPG_TTY=$TTY
export PROMPT_EOL_MARK=""
export BAT_THEME="base16"

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

alias l="exa --icons -la"
alias ls="exa --icons"
alias cat="bat --paging=never"
alias cd="z"
alias upgkbd="sudo kmonad ~/.config/apple_laptop.kbd"
alias sudo="doas"
alias cloc="tokei"
alias diff="diff --color=always"
alias fetch="clear && printf '\n' && pfetch && sleep 10"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
