export JAVA_HOME=`/usr/libexec/java_home`
export CATALINA_HOME=/opt/local/share/java/tomcat6

#Needed for git branch autocompletion
source /usr/local/git/contrib/completion/git-completion.bash

##
# Your previous /Users/jrobles/.bash_profile file was backed up as /Users/jrobles/.bash_profile.macports-saved_2011-10-11_at_21:05:56
##
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}


# MacPorts Installer addition on 2011-10-11_at_21:05:56: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

#export http_proxy=http://jrobles:JM77rr99dna@lon1.sme.zscaler.net:80/
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export BUNDLER_EDITOR='/Applications/MacVim.app/Contents/MacOS/Vim -g'

export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]$(parse_git_branch)  \$ '

# Issues with running the Jasmine specs and request specs with Firefox 14.
# We cornered this down to an upgrade of the selenium-webdriver gem. However,
# upgrading caused some extra proxy issues.
export no_proxy=127.0.0.1


alias gvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'
#alias mvim="open /Applications/MacVim.app"
alias vv="vim ~/.vimrc"
alias vb="vim ~/.bash_profile"
alias sb="source ~/.bash_profile"
alias be="bundle exec"
alias bi="bundle install"
alias bu="bundle update"
alias rr="rbenv rehash"
alias ms1="bundle exec rails s -p 3000 thin"
alias mss="bundle exec rails s -p 3030 thin"
alias mss2="bundle exec rails s -p 3031 thin"
alias fb="bundle exec fudge build"

# git alias
alias g="git"
alias gs="git status"
alias gst="git stash"
alias gd="git diff"
alias gcm="git commit"
alias gco="git checkout"
alias gg='git gui'
alias gk='gitk'

export PATH=$PATH:/Users/jrobles/scripts
GREP_OPTIONS="--color=always";export GREP_OPTIONS

export RUBY_GC_MALLOC_LIMIT=60000000
export RUBY_FREE_MIN=200000
alias clone='git_clone clone'
export CC=/usr/local/bin/gcc-4.2
export CXX=/usr/local/bin/g++-4.2
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"
