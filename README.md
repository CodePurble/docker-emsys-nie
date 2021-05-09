# docker-emsys-nie

A Docker image containing binaries required for the Embedded Systems Lab (Sem 6) at NIE Mysuru

You can pull from DockerHub:

```sh
$ docker pull codepurble/docker-emsys-nie
```

**OR**

You can build the image yourself using:

```sh
$ git clone https://github.com/CodePurble/docker-emsys-nie.git
$ cd docker-emsys-nie
$ docker build .
```

# Why?

Convenient to have an image that has everything required for the lab without
the hassle of getting build dependencies. (I had a miserable time setting mine
up). Hope this helps you! :smile:

# Info

This image contains the following packages:

* `build-essential`
* `u-boot-tools`
* `gcc-arm-none-eabi`
* `gcc-arm-linux-gnueabihf`
* `libncurses-dev`
* `bc`
* `cpio`

> Note that the packages are all exclusively **build** dependencies. This image
> does not aim to contain things like U-boot images, kernel archives etc.

# Usage

It is recommended you mount the directory where `Makefile`s, kernel archives,
program files etc., as a volume when starting a container.

You can do something like:

```sh
$ cd <your-workdir>
$ docker run -it -v $(pwd):/opt/ codepurble/docker-emsys-nie
```

And do your stuff in there.

`qemu` can run on your host system using binaries/images built in the
container, so `qemu` is not part of the container.

# Contributions

I will try to keep this as up to date as possible. If there is something
missing, submit a PR!

Aand, you know the drill, if there's a problem, open up an issue.
