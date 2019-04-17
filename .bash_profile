# bash profile
source ~/.bashrc

# aliases
alias ll="ls -alh --color"

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
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$HOME/.cargo/bin:$PATH"
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

# prompt
export PS1="\[\033[01;32m\][\u@\h:\w]\[\033[01;00m\]$ "

# if [[ ! $DISPLAY && $XDG_VTR -eq 1 ]]; then
#  exec startx
# fi

# starting ssh-agent
eval "$(keychain --eval -q --agents ssh ~/.ssh/id_rsa)"

# start X server when logging in
echo "Starting X..."
exec startx

