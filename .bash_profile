# Command prompt
export PS1="\[\e[35m\] \w \[\e[0m\]> "

export EDITOR='subl'

# Disable history
export HISTFILE="/dev/null"

# rbenv
export PATH="bin/:$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
