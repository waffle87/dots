#!/bin/zsh
if [ "$(tty)" = "/dev/tty1" ]; then
  exec startx
fi
export HISTFILE=~/.zsh_history
export HISTSIZE=20000
export SAVEHIST=20000
export LANG=en_GB.UTF-8
export LC_CTYPE=en_US.UTF-8
export GPG_TTY=$TTY
export PROMPT_EOL_MARK=""
export BAT_THEME="gruvbox-dark"
path+=(.local/bin)
path+=(/usr/local/texlive/2023/bin/x86_64-linux)
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

alias l="eza -la --icons"
alias ls="eza --icons"
alias l="ls -lah"
alias cat="bat --paging=never"
alias cd="z"
#alias sudo="doas"
alias cloc="tokei"
alias diff="diff --color=always"
alias fetch="clear && printf '\n' && neofetch && sleep 10"
alias sysyadm="sudo yadm --yadm-dir /etc/yadm --yadm-data /etc/yadm/data"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
