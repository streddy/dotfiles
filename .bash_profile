PS1='\u:\W \$ '
tmux

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

export PATH=$PATH:$(go env GOPATH)/bin

export CLICOLOR=1

alias bedsty='ssh jeev@bedsty.ucsd.edu'
alias clear_spotify='rm -rf /Users/Jeev/Library/Caches/com.spotify.client/Data'
alias tkill='tmux kill-session -t'
alias tls='tmux ls'
