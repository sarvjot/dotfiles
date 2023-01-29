# Setup fzf
# ---------
if [[ ! "$PATH" == */home/sarvjot/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/sarvjot/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/sarvjot/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/sarvjot/.fzf/shell/key-bindings.zsh"

# Custom 

export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

