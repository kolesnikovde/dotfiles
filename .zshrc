export EDITOR="subl"

# rbenv
export PATH="bin/:$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# oh-my-zsh
export ZSH=~/.oh-my-zsh
ZSH_THEME="theme"
CASE_SENSITIVE="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# ls and completion colors
export LSCOLORS="gahxhahahahahahahxhxhx"
export LS_COLORS="di=36;40:ln=37;40:so=37;40:pi=37;40:ex=37;40:bd=37;40:cd=37;40:su=37;40:sg=37;40:tw=37;40:ow=37;40:"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# SSH
pgrep ssh-agent &> /dev/null
if [ $? -ne 0 ]; then
    eval $(ssh-agent) &> /dev/null
    ssh-add -K &> /dev/null
    echo "export SSH_AGENT_PID=$SSH_AGENT_PID" > ~/.ssh-agent
    echo "export SSH_AUTH_SOCK=$SSH_AUTH_SOCK" >> ~/.ssh-agent
else
    source ~/.ssh-agent
fi

# z
. $(brew --prefix)/etc/profile.d/z.sh

# Go
export GOPATH=$HOME/.go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
