HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
bindkey "^?" backward-delete-char
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle :compinstall filename '/home/jack/.zshrc'
autoload -Uz compinit bashcompinit
compinit
bashcompinit

eval "$(starship init zsh)" # Starship prompt
export GPG_TTY=$TTY
export LANG=en_US.UTF-8
export PROMPT_EOL_MARK="" # To avoid outputting % after unterminated lines
export BAT_THEME="Nord"

# Alias
alias l="exa --icons -la"
alias ls="exa --icons"
alias cat="bat --paging=never"
alias upgkbd="sudo kmonad kmonad/keymap/user/waffle/apple_laptop.kbd"
alias disablekbd="swaymsg input 1452:657:Apple_Inc._Apple_Internal_Keyboard_/_Trackpad events disabled"
alias enablekbd="swaymsg input 1452:657:Apple_Inc._Apple_Internal_Keyboard_/_Trackpad events enabled"
alias zathrua="zathura"
alias sudo="doas"
alias fetch="neofetch && sleep 10"

source ~/waffle_git/qmk_firmware/util/qmk_tab_complete.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
