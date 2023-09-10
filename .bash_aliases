alias ff='fzf'
alias ccd='code .'
alias nvv='nvim .'
alias devS='npm run devStart'
alias cl='clear'

# WORKSPACES
alias bnn='nvim ~/.bash_aliases'
alias dnn='cd ~/Desktop/'
alias cnn='cd ~/Desktop/kata-machine/'
alias enn='cd ~/Desktop/Express/contact-app/'
alias qnn='cd ~/Desktop/QuickBoard/'
alias gnn='cd ~/Desktop/Leetcode/'

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

