typeset -U PATH path
path=("$HOME/.local/bin" "$path[@]")
export PATH

export ZSH="/home/jack/.oh-my-zsh"
eval "$(starship init zsh)" # Starship prompt
export GPG_TTY=$(tty)

plugins=(zsh-autosuggestions copydir zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source ~/waffle_git/qmk_firmware/util/qmk_tab_complete.sh

export LANG=en_US.UTF-8
export PROMPT_EOL_MARK="" # To avoid outputting % after unterminated lines

bindkey -v

# Alias
alias upgkbd="sudo kmonad kmonad/keymap/user/waffle/apple_laptop.kbd"
alias zathrua="zathura"
alias sudo="doas"
