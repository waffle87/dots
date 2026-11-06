typeset -U path
path=("$HOME/.local/bin" $path)

export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000
export LESSHISTFILE="$HOME/.local/share/less-history"
export PYTHON_HISTORY="$HOME/.local/share/python-history"
export EDITOR=nvim
export VISUAL=nvim

[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local
