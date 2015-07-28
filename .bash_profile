# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

NODE_HOME=/home/fishz/node
JAVA_HOME=/usr/lib/jvm/java-8-oracle

PATH=$PATH:$HOME/bin:$NODE_HOME/bin:$JAVA_HOME/bin


CVSEDITOR="vim"
SVN_EDITOR="vim"

export PATH NODE_HOME JAVA_HOME
