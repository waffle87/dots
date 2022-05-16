HISTFILE=~/.histfile
HISTSIZE=20000
SAVEHIST=20000
bindkey -v
bindkey "^?" backward-delete-char
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle :compinstall filename '/home/jack/.zshrc'
autoload -Uz compinit bashcompinit
compinit
bashcompinit

alias l="exa --icons -la"
alias ls="exa --icons"
alias cat="bat --paging=never"
alias pulsemixer="./pulsemixer"
alias zathrua="zathura"
alias sudo="doas"
alias fetch="neofetch && sleep 10"

export GPG_TTY=$TTY
export PROMPT_EOL_MARK=""
export BAT_THEME="Dracula"

eval "$(starship init zsh)"

source ~/waffle_git/qmk_firmware/util/qmk_tab_complete.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
