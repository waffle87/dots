export HISTFILE=~/.zsh_history
export HISTSIZE=20000
export SAVEHIST=20000
export LC_LANG=en_US.UTF-8
export GPG_TTY=$TTY
export PROMPT_EOL_MARK=""
export BAT_THEME="Solarized (dark)"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#657b83"

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

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
alias cd="z"
alias cat="bat --paging=never"
alias zathrua="zathura"
alias sudo="doas"
alias cloc="tokei"
alias fetch="neofetch && sleep 5"
alias diff="diff --color=always"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

source ~/waffle_git/qmk_firmware/util/qmk_tab_complete.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
