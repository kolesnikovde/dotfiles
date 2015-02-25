export EDITOR='subl'

# rbenv
export PATH="bin/:$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Git autocompletion
if [ ! -f ~/.git-completion.bash ]; then
  curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
fi

if [ ! -f ~/.git-prompt.sh ]; then
  curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
fi

. ~/.git-completion.bash
. ~/.git-prompt.sh

# Command prompt
export PS1="\[\e[36m\] \w\[\e[0m\]\$(__git_ps1) > "
