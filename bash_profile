export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH

# aliases
alias e="mate"
alias r="rails"
#share your direcory as web on port 8000
alias webshare='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'
#colorizing terminal list output (to get more info about current dir)
alias ls ='ls -pG'

# git show current branch
# parse_git_branch_and_add_brackets
function git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
}

#simple prompt
#old PS1 
# PS1="\h:\W \u\[\033[0;32m\]\$(parse_git_branch_and_add_brackets) \[\033[0m\]\$ "
PS1="\W\[\033[0;32m\]\$(git_branch) \[\033[0m\]\$ "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.