FROM --platform=amd64 debian:11

# # Static GID/UID is useful for chown'ing files outside the container where
# # such a user does not exist.
# # https://prairielearn.readthedocs.io/en/latest/workspaces/
# # In production, workspaces are run with user:group set to 1001:1001.
# RUN addgroup --gid 1001 --system nonroot && \
#     adduser --uid 1001 --system --ingroup nonroot --home /home/nonroot nonroot

# Install dependencies
RUN apt-get -y update && \
    apt-get install -y \
        ca-certificates \
        git \
        curl \
        sudo \
        lsb-release \
        # haskell stack
        gcc \
        g++ \
        make

# RUN chown -R nonroot:nonroot /stack && \
#     chown -R nonroot:nonroot /home/nonroot

# USER nonroot

# Install stack
RUN curl -sSL "https://get.haskellstack.org/" | sh

# Setup stack resolver
RUN stack setup --resolver lts-18.23 --install-ghc 