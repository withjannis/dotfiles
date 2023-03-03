# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs

set -o vi

alias ll="ls -lah"
alias tmuxj="tmux attach-session -t "

export EDITOR="vim"

parse_git_branch() {
         git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[35m\]\u\[\033[00m\]@\[\033[35m\]\h\[\033[00m\]/\[\033[96m\]\W\$(parse_git_branch)\[\033[00m\]$ "
