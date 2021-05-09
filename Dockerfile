FROM ubuntu:xenial

LABEL maintainer="https://github.com/CodePurble"
LABEL description="A Docker image containing binaries required for the Embedded Systems Lab (Sem 6) at NIE Mysuru"

RUN apt-get update && apt-get -y install build-essential u-boot-tools gcc-arm-none-eabi gcc-arm-linux-gnueabihf libncurses-dev bc cpio

CMD ["/bin/bash"]
