FROM debian:11

# Install dependencies
RUN apt-get -y update && \
    apt-get install -y \
        git \
        curl \
        sudo \
        lsb-release \
        # haskell stack
        gcc \
        g++ \
        make \

# Install stack
RUN curl -sSL "https://get.haskellstack.org/" | sh

# Setup stack resolver
RUN stack setup --resolver lts-18.23 --install-ghc 