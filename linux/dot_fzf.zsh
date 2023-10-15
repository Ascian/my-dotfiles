# Setup fzf
# ---------
if [[ ! "$PATH" == */home/ascian/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/ascian/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/ascian/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/ascian/.fzf/shell/key-bindings.zsh"

# Changing the layout
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse '

# Changing Ctrl-T
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200' --select-1"

# Changing Alt-C
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"
