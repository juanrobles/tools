export JAVA_HOME=`/usr/libexec/java_home`
export CATALINA_HOME=/opt/local/share/java/tomcat6

#Needed for git branch autocompletion
source /usr/local/git/contrib/completion/git-completion.bash

##
# Your previous /Users/jrobles/.bash_profile file was backed up as /Users/jrobles/.bash_profile.macports-saved_2011-10-11_at_21:05:56
##
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}


# MacPorts Installer addition on 2011-10-11_at_21:05:56: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

#export http_proxy=http://jrobles:JM77rr99dna@lon1.sme.zscaler.net:80/
export PATH="$HOME/.rbenv/bin:$PATH"
export BUNDLER_EDITOR=vim
eval "$(rbenv init -)"
export BUNDLER_EDITOR=vim

export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]$(parse_git_branch)\$ '

# Issues with running the Jasmine specs and request specs with Firefox 14.
# We cornered this down to an upgrade of the selenium-webdriver gem. However,
# upgrading caused some extra proxy issues.
export no_proxy=127.0.0.1

alias macvim="open /Applications/MacVim.app"
alias be="bundle exec"
alias gs="git status"
alias bi="bundle install"
alias rr="rbenv rehash"

export PATH=$PATH:/Users/jrobles/scripts
