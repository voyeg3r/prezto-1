# for MacVim
alias macvim="open -a MacVim"

# for Preview open pdf
alias o="open -a Preview"

# filetree, don't need because brew install tree
# alias filetree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'"

# Path for Shell script
[[ -d ~/Dropbox/Software/MacHome ]] && export PATH=~/Dropbox/Software/MacHome:${PATH}
[[ -d ~/Dropbox/Software/MacHome/OS-161-Scripts ]] && export PATH=~/Dropbox/Software/MacHome/OS-161-Scripts:${PATH}

# Path for Emacs
[[ -d /Applications/Emacs.app/Contents/MacOS ]] && {
    export PATH=/Applications/Emacs.app/Contents/MacOS:${PATH}
    export PATH=/Applications/Emacs.app/Contents/MacOS/bin:${PATH}
}

# alias for Emacs in Terminal
command -v Emacs >/dev/null 2>&1 && alias emacs="Emacs -nw"

# Path for MacVim
[[ -d /Applications/MacVim.app/Contents/MacOS ]] && {
    export PATH=/Applications/MacVim.app/Contents/MacOS:${PATH}
}

# alias vim to Vim for compatible
command -v Vim >/dev/null 2>&1 && alias vim=Vim

# Path for Matlab
[[ -d /Applications/MATLAB_R2014b.app/bin ]] && export PATH=${PATH}:/Applications/MATLAB_R2014b.app/bin

# Set JAVA_HOME, this is Mac OS only
# for Ubuntu please use sudo update-alternatives --config java
function jdk() {
    JVM_PATH=/Library/Java/JavaVirtualMachines
    [[ ! -d ${JVM_PATH} ]] && return
    JAVA_CANDIDATE=($(ls ${JVM_PATH}))
    [[ $# == 0 ]] && select opt in "${JAVA_CANDIDATE[@]}"; do; [[ ${opt} != "" ]] && break; done || opt=$*
    for i in ${JAVA_CANDIDATE[@]}
    do
        [[ ${i} == *${opt}* ]] && export JAVA_HOME="${JVM_PATH}/${i}/Contents/Home"
    done
    echo "Set JAVA_HOME to ${JAVA_HOME}"
}

# set default JDK to 1.8
jdk 1.8 > /dev/null