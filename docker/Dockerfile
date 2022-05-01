FROM --platform=amd64 debian:11

# Add user group
# Good practice: use nonroot on an OS
RUN addgroup --gid 1001 --system nonroot && \
    adduser --uid 1001 --system --ingroup nonroot --home /home/nonroot nonroot

# Install dependencies
RUN apt-get -y update && \
    apt-get install -y \
        ca-certificates \
        git \
        curl \
        sudo \
        lsb-release \
        gcc \
        g++ \
        make

# Install stack
RUN curl -sSL "https://get.haskellstack.org/" | sh

RUN chown -R nonroot:nonroot /home/nonroot

USER nonroot

# Setup stack resolver
RUN stack setup --resolver lts-18.23 --install-ghc 