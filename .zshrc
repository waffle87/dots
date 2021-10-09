typeset -U PATH path
path=("$HOME/.local/bin" "$path[@]")
export PATH

export ZSH="/home/jack/.oh-my-zsh"
eval "$(starship init zsh)" # Starship prompt
export GPG_TTY=$(tty)

plugins=(zsh-autosuggestions copydir zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim'
fi

export PROMPT_EOL_MARK="" # To avoid outputting % after unterminated lines

# Alias
alias gitoneline="git log --pretty=oneline"
alias upgkbd="sudo kmonad kmonad/keymap/user/waffle/apple_laptop.kbd"
