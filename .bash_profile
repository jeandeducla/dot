# bash profile
# source ~/.bashrc

# aliases
alias ll="ls -alh --color"
alias vi="vim"

# git aliases
alias gs="git status"
alias gl="git pull"
alias gp="git push"
alias gc="git commit"
alias ga="git add"
alias gco="git checkout"
alias gb="git branch"
alias gd="git diff"

# env variable
export CDPATH=~/works/

# rust
export PATH="$PATH:$HOME/.cargo/bin"
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/library"

# go
export GOPATH="$HOME/works/go"
export GOPRIVATE="github.com/streamroot/*"
export PATH="$PATH:$GOPATH/bin"
export CDPATH="$CDPATH:$GOPATH/src/github.com/streamroot"

# prompt
export PS1="\[\033[01;32m\][\u@\h:\w]\[\033[01;00m\]$ "

# terraform
export TF_CREDS="/home/jean/.config/gcloud/jean-terraform-admin.json"

# bash completion
source /usr/share/bash-completion/bash_completion

# swiss
eval "$(register-python-argcomplete swiss)"
export PATH="$PATH:$HOME/.local/bin"
# deploy
export PATH="$PATH:$HOME/works/infra-cli/bin"

# pyenv
eval "$(pyenv init -)"

# start X server when logging in
# if [[ ! $DISPLAY ]]; then
#     echo "Starting X..."
#     exec startx
# fi
# export XDG_CONFIG_HOME=/home/jean/.config

xset -b

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
