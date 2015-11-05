FROM frolvlad/alpine-glibc:latest
MAINTAINER Ryan Roberts (ryansroberts@gmail.com)

RUN apk add --update wget ca-certificates tar xz autoconf libtool pkgconf make git automake && \
    cd /tmp && \
    wget "https://www.archlinux.org/packages/extra/x86_64/mono/download/" -O mono.pkg.tar.xz && \
    cd / && \
    tar xJf /tmp/mono.pkg.tar.xz && \
    git clone https://github.com/fsharp/fsharp &&\
    cd fsharp &&\
    ./autogen.sh --prefix /usr &&\
    mozroots --import --ask-remove && \
    make &&\
    make install &&\
    apk del wget ca-certificates tar xz autoconf libtool pkgconf make git automake && \
    rm -rf /tmp/* /var/cache/apk/* /fsharp
