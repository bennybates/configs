
alias kp="mono /Users/benjaminbates/Downloads/KeePass-2/KeePass.exe"
alias rstun="ssh -o 'TCPKeepAlive yes' -o 'Compression no' -NL 5439:redshift.rkcloud.us:5439 bbates@v1.rkcloud.us"

alias glg="git log --pretty=format:'%Cred%h%Creset%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias delete_old="git branch --merged | grep -v \* | xargs git branch -D"

alias ltr="ls -altr"
alias la="ls -al"
alias lc=ls
alias ll="ls -l"
alias la="ls -a"
alias lal="ls -la"
alias cd..="cd .."
alias ..="cd .."

alias logs="ssh logs.runkeeper.com"
alias util="ssh util.runkeeper.com"
alias w1="ssh web1.runkeeper.com"
alias w2="ssh web2.runkeeper.com"
alias w3="ssh web3.runkeeper.com"
alias w4="ssh web4.runkeeper.com"
alias st1="ssh st1.rkstaging.com"
alias st2="ssh st2.rkstaging.com"
alias st1t="ssh -f bbates@st1.rkstaging.com -L 65000:st1.rkstaging.com:5432 -N"
alias st2t="ssh -f bbates@st2.rkstaging.com -L 65000:st2.rkstaging.com:5432 -N"
alias utilt="ssh -f bbates@util.runkeeper.com -L 65000:util.runkeeper.com:5432 -N"

alias gethosts="curl http://puppet.runkeeper.com/statics/rk-known-hosts > ~/.ssh/rk-known-hosts"
alias rspec="rspec -c -fd"

# PS1='\[\033[01;35m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$ '
export PS1='\u@\h \[\033[1;33m\]\w\[\033[0m\]$(parse_git_branch)$ '
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}

## set command line to vi mode
set -o vi

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export EDITOR=vim

export PATH=$PATH:~/bin
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:$HOME/Software/android-sdk-macosx3/platform-tools/:$HOME/Software/android-sdk-macosx3/tools
export PATH="$PATH:/Library/PostgreSQL/9.2/bin"
export PATH="$PATH:/usr/local/lib/node_modules/hubot/bin"
export PATH="$PATH:/usr/local/lib/node_modules/hubot/node_modules/"
export PATH="$PATH:/Applications/apache-maven-3.2.1/bin/"

##
# Your previous /Users/benjaminbates/.bash_profile file was backed up as /Users/benjaminbates/.bash_profile.macports-saved_2014-08-13_at_16:18:56
##

# MacPorts Installer addition on 2014-08-13_at_16:18:56: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# added by Anaconda 2.2.0 installer
export PATH="/Users/benjaminbates/anaconda/bin:$PATH"

  if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

source ~/.profile
