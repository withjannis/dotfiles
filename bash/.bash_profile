# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs

#set -o vi

alias ll="ls -lah"

alias tmuxj="tmux attach-session -t "

alias n='nvim -c ":E"'
alias ni='nvim'
export EDITOR="nvim"

#parse_git_branch() {
#         git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
#}
#export PS1="\[\033[35m\]\u\[\033[00m\]@\[\033[35m\]\h\[\033[00m\]/\[\033[96m\]\W\$(parse_git_branch)\[\033[00m\]$ "

function parse_git_dirty {
  [[ $(git status --porcelain 2> /dev/null) ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ (\1$(parse_git_dirty))/"
}

#export PS1="\t \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
export PS1="\t \[\033[35m\]\w\[\033[96m\]\$(parse_git_branch)\[\033[00m\] $ "
#export PS1="\[\033[35m\]\u\[\033[00m\]@\[\033[35m\]\h\[\033[00m\]/\[\033[96m\]\W\$(parse_git_branch)\[\033[00m\]$ "
