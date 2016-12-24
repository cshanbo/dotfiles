export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export TERM=xterm-256color
# export PYTHONPATH=/usr/local/lib/python2.7/site-packages/:$PYTHONPATH
# export PYTHONPATH=/search/odin/chengshanbo/tools/anaconda2/bin/:$PYTHONPATH


alias l='ls -lF'
alias la='ls -AF'
alias ll='ls -lF'

export PATH=/search/odin/chengshanbo/conda-old/anaconda2/bin/:$PATH
# alias python='/search/odin/chengshanbo/tools/anaconda2/bin/python2.7'
# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
#
#export PATH

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
export LC_ALL=zh_CN.UTF-8
