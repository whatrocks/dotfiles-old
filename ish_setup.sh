apk update
apk upgrade
apk add man \
    man-pages \
    less \
    less-doc
    vim \
    highlight \
    highlight-doc
    build-base \
    clang \
    clang-doc \
    nasm \
    nasm-doc
    curl \
    curl-dev \
    curl-doc \
    openssh \
    openssh-doc \
    openssh-client \
    openssh-server \
    openssh-keygen \
    git \
    git-doc \
    bash

# to make bash default, open /etc/passwd with vim
# and change root:x:0:0:root:/root:/bin/ash
# into root:x:0:0:root:/root:/bin/bash
# then create ~/.bash_rc file for preferences
