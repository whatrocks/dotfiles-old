apk update && apk upgrade

# c setup - reference (https://jsmp.me/2020/05/05/c-development-on-ios)
# docs
apk add man \
    man-pages \
    less \
    less-doc

# editor
apk add vim \
    highlight \
    highlight-doc

# compile
apk add build-base \
    clang \
    clang-doc \
    nasm \
    nasm-doc

# file transfer
apk add curl \
    curl-dev \
    curl-doc \
    openssh \
    openssh-doc \
    git \
    git-doc

# bash
apk install bash
# to make bash default, open /etc/passwd with vim
# and change root:x:0:0:root:/root:/bin/ash
# into root:x:0:0:root:/root:/bin/bash
# then create ~/.bash_rc with your preferences
