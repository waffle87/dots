HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
bindkey -v
bindkey "^?" backward-delete-char
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle :compinstall filename '/home/jack/.zshrc'
autoload -Uz compinit
compinit

alias l="ls -la"
#alias ls="ls --color=auto"
alias pulsemixer="./pulsemixer"
alias zathrua="zathura"
alias sudo="doas"

export GPG_TTY=$TTY
export PROMPT_EOL_MARK=""

eval "$(starship init zsh)"
#source ~/waffle_git/qmk_firmware/util/qmk_tab_complete.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
