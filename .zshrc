# prompt
export PS1="%n@%1~ %# "

# # vi mode
# bindkey -v

# zsh completion
autoload -U compinit
compinit

autoload -U bashcompinit
bashcompinit

eval "$(register-python-argcomplete my-awesome-script)"

# Homebrew
export PATH=/opt/homebrew/bin:/usr/local/bin:$PATH

# Golang
export GOENV_ROOT=$HOME/.goenv
export PATH=$GOENV_ROOT/bin:$PATH
eval "$(goenv init -)"
export PATH=$GOROOT/bin:$GOPATH/bin:$PATH

# Python
export PATH=$PATH:~/Library/Python/3.9/bin

# Atcoder
function gen-acproj(){
    cargo generate --name $1 --git https://github.com/VeyronSakai/atcoder_rs_template.git
}

# vim
alias vi="nvim"
alias vim="nvim"
alias view="nvim -R"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '~/google-cloud-sdk/path.zsh.inc' ]; then . '~/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '~/google-cloud-sdk/completion.zsh.inc' ]; then . '~/google-cloud-sdk/completion.zsh.inc'; fi

# Rust
export PATH=$PATH:~/.cargo
