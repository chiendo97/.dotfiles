# dotfiles for .files config
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Copy pwd to clipboard
alias cpwd="pwd | tr -d '\n' | pbcopy"

# Disable tensorflow warning about optimize CPU build
export TF_CPP_MIN_LOG_LEVEL=2

export SPARK_HOME=/usr/local/Cellar/apache-spark/2.4.1/libexec
export PYSPARK_PYTHON=/usr/local/bin/python3

# Fix pyspark “Unable to locate hive jars to connect to metastore. Please set spark.sql.hive.metastore.jars.”
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_201.jdk/Contents/Home

# Fix pipenv ValueError: unknown locale: UTF-8 
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export PYTHONSTARTUP=~/.pystartup

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# Enable tab completion
if [ -e ~/git-prompt.sh ]; then
  source ~/git-completion.bash
  # colors!
  green="\[\033[0;32m\]"
  blue="\[\033[0;34m\]"
  purple="\[\033[0;35m\]"
  reset="\[\033[0m\]"
fi



# Change command prompt
if [ -e ~/git-prompt.sh ]; then
  source ~/git-prompt.sh
  export GIT_PS1_SHOWDIRTYSTATE=1
  # '\u' adds the name of the current user to the prompt
  # '\$(__git_ps1)' adds git-related stuff
  # '\W' adds the name of the current directory
  export PS1="$purple\u$green\$(__git_ps1)$blue \W $ $reset"
fi 

##
# Your previous /Users/chiendo97/.bash_profile file was backed up as /Users/chiendo97/.bash_profile.macports-saved_2019-05-12_at_20:03:07
##

# MacPorts Installer addition on 2019-05-12_at_20:03:07: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

