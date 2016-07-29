export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PYTHONPATH=/usr/local/lib/python2.7/site-packages/:$PYTHONPATH


alias l='ls -lF'
alias la='ls -AF'
alias ll='ls -lF'
alias vim='mvim -v'

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
#
#export PATH

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
