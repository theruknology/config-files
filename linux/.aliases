alias ccd='code .'
alias nv='nvim .'
alias devS='npm run devStart'
alias cl='clear'

# WORKSPACES
alias bnn='nvim ~/.bash_aliases'
alias dnn='cd ~/Desktop/'
alias cnn='cd ~/Desktop/kata-machine/'
alias enn='cd ~/Desktop/expo-tutorial'
alias xnn='cd ~/Desktop/express-tutorial/'
alias qnn='cd ~/Desktop/QuickBoard/'
alias gnn='cd ~/Desktop/Leetcode/'
alias nnn='cd ~/Desktop/Notes/'
alias android='cd ~/androidStudio/android-studio-2022.3.1.19-linux/android-studio/bin/ && ./studio.sh'

# git aliases 
function _gacp ()
{
   git add . && git commit -m "$1" && git push 
}
function _gac ()
{
   git add . && git commit -m "$1" 
}

# for c compiling 
function _gc ()
{
   gcc "$1" -o a.out && ./a.out 
}

function _mg ()
{
   mkdir "$1" && cd "$1" 
}

function ff() {
    work=$(find . -type d | fzf)
    if [ -z "$work" ]; then
        cd ./
    else 
        cd "$work"
    fi
}

function fff() {
    work=$(find "$HOME" -type d | fzf)
    if [ -z "$work" ]; then
        cd ./
    else 
        cd "$work"
    fi
}
