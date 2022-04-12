HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
bindkey "^?" backward-delete-char
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle :compinstall filename '/home/jack/.zshrc'
autoload -Uz compinit
compinit

eval "$(starship init zsh)" # Starship prompt
export GPG_TTY=$TTY
export LANG=en_US.UTF-8
export PROMPT_EOL_MARK="" # To avoid outputting % after unterminated lines

# Alias
alias l="exa --icons -la"
alias ls="exa --icons"
alias upgkbd="sudo kmonad kmonad/keymap/user/waffle/apple_laptop.kbd"
alias disablekbd="swaymsg input 1452:657:Apple_Inc._Apple_Internal_Keyboard_/_Trackpad events disabled"
alias enablekbd="swaymsg input 1452:657:Apple_Inc._Apple_Internal_Keyboard_/_Trackpad events enabled"
alias zathrua="zathura"
alias sudo="doas"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
