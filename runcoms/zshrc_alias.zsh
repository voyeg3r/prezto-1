alias l="ls -lh"

command -v ag >/dev/null 2>&1 && {
    alias lsg="ls | ag "
    alias lslg="ls -a | ag "
    alias lg="ls -lh | ag "
    alias ags="ag -G scala$ "
} || {
    alias lsg="ls | grep "
    alias lslg="ls -a | grep "
    alias lg="ls -lh | grep "
}

# remove rm -i to avoid useless confirm.
alias rm="nocorrect rm"

# Automatic open
alias -s pdf=open
alias -s txt=vim
alias -s java=vim
alias -s js=vim
alias -s html=vim
alias -s tex=vim
alias -s bib=vim

# alias for hadoop
command -v hadoop >/dev/null 2>&1 && {
    alias hfs="hadoop fs "
    alias hfls="hadoop fs -ls"
    alias hfrm="hadoop fs -rm"
    alias hfcat="hadoop fs -cat"
    alias hjar="hadoop jar"
}

# alias for git
command -v git >/dev/null 2>&1 && {
    alias gcma="git commit -am"
    alias gcmm="git commit -m"
    alias gdiff="git --no-pager diff"
    alias glog="git --no-pager log"
}

# alias for Android develop
command -v adb >/dev/null 2>&1 && {
    alias ashell="adb shell"
    alias alog="adb logcat -v threadtime"
    alias alc="adb logcat -c"
    alias als="adb logcat -s"
    alias ainstall="adb install -r"
    alias auninstall="adb uninstall"
    alias apull="adb pull"
    alias areboot="adb reboot"
    alias aflash="fastboot flashall"
}

# alias for Meteor
command -v meteor >/dev/null 2>&1 && {
    alias m="meteor"
}

# alias for Python3
command -v python3 >/dev/null 2>&1 && {
    alias p3="python3"
}

[[ -s "${ZDOTDIR:-$HOME}/.zshrc_vimode.zsh" ]] && source "${ZDOTDIR:-$HOME}/.zshrc_vimode.zsh"
