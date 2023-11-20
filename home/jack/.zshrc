#!/bin/zsh
if test -z "${XDG_RUNTIME_DIR}"; then
	export XDG_RUNTIME_DIR=/tmp/${UID}-runtime-dir
	if ! test -d "${XDG_RUNTIME_DIR}"; then
		mkdir "${XDG_RUNTIME_DIR}"
		chmod 0700 "${XDG_RUNTIME_DIR}"
	fi
fi

export PATH

eval "$(zoxide init zsh)"

alias cd="z"

export HISTFILE=~/.zsh_history
export HISTSIZE=20000
export SAVEHIST=20000
export LANG=en_GB.UTF-8
export LC_CTYPE=en_US.UTF-8
export GPG_TTY=$TTY
export PROMPT_EOL_MARK=""
#export BAT_THEME="base16"
path+=(/opt/rustc/bin)
path+=(.local/bin)
path+=(/usr/local/bin)
export PATH

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

bindkey -v
bindkey "^?" backward-delete-char
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle :compinstall filename '~/.zshrc'
autoload -U compinit && compinit

#eval "$(starship init zsh)"
#eval "$(zoxide init zsh)"

#alias l="eza -la"
#alias ls="eza"
alias l="ls -lah"
#alias cat="bat --paging=never"
#alias cd="z"
alias sudo="doas"
alias cloc="tokei"
alias diff="diff --color=always"
alias fetch="clear && printf '\n' && pfetch && sleep 10"
alias sysyadm="sudo yadm --yadm-dir /etc/yadm --yadm-data /etc/yadm/data"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh