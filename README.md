# haskell_local_env
- Zonglin Peng (zonglin7)
- Zhimeng Pi (zhimeng2)

This project is a quick way to setup the haskell local environment within seconds.<br><br>

## Tech Stack
- Docker: The setup is dockerized in the docker image.
- Bash: Build a new docker image. Used when a new `lts` version is used.

## Links
[Docker Readme](./docker/README.md)<br>
[Build Readme](./build/README.md)

## Instuction
1. Obtain the docker image either from docker.io or build a new docker image. This can be done through 
    - Github Actions by triggering a new build, or 
    - Build from the local bash script.
2. Docker run the docker container to have full access to the haskell stack environment.



