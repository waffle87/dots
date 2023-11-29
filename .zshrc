#!/usr/bin/zsh

if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
  exec Hyprland
fi

typeset -U PATH path
path=("$HOME/.local/bin" "$path[@]")
export PATH

export HISTFILE=~/.zsh_history
export HISTSIZE=20000
export SAVEHIST=20000
export LC_CTYPE=en_US.UTF-8
export GPG_TTY=$TTY
export PROMPT_EOL_MARK=""
export BAT_THEME="Solarized (dark)"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#657b83"
export MOZ_ENABLE_WAYLAND=1

typeset -U PATH path
path=("$HOME/.local/bin" "$path[@]")
path+=('/usr/local/texlive/2023/bin/x86_64-linux')
export PATH

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

bindkey -v
bindkey "^?" backward-delete-char
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit bashcompinit
compinit
bashcompinit

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# Alias
alias l="eza -la"
alias ls="eza"
alias cat="bat --paging=never"
alias cd="z"
alias sudo="doas"
alias cloc="tokei"
alias diff="diff --color=always"
alias fetch="clear && printf '\n\n' && pfetch && sleep 15"

source ~/waffle_git/qmk_firmware/util/qmk_tab_complete.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
