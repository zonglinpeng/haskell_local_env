# Dockerfile

Defines how the docker container is spawned. <br><br>

## Introduction
To update the lts version please modify the lts version in this Dockerfile. The stack is only supported in X86 systems, so the docker images is built from amd64. Run the image on an ARM system may result in timeout/force-kill.

## Static Image
- zonglin7/haskell-local-build:latest

## Instructions
```bash
docker buildx build . -f Dockerfile haskell:dev
```