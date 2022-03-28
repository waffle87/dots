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
alias l="ls -lah --color=auto"
alias ls="ls --color=auto"
alias sudo="doas"
alias ememrge="emerge"
alias fetch="neofetch && sleep 10"
alias upgkbd="sudo kmonad kmonad/keymap/apple_laptop.kbd"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
