# docker-emsys-nie

A Docker image containing binaries required for the Embedded Systems Lab (Sem 6) at NIE Mysuru

# Why?

Convenient to have an image that has everything required for the lab without
the hassle of getting build dependencies. (I had a miserable time setting mine
up). Hope this helps you! :smile:

# Prerequisites

* **OS:** Linux-based (preferred). For Windows, try
  [this](https://ubuntu.com/tutorials/windows-ubuntu-hyperv-containers#1-overview)
  (no guarantees, I haven't tested this. If you can help here, please do)
* `docker`
    * If you use an Ubuntu-based system, look [here](https://docs.docker.com/engine/install/ubuntu/).
    * Also take a look at the post-installation steps [here](https://docs.docker.com/engine/install/linux-postinstall/).

# Get it

You can pull from DockerHub (preferred):

```sh
$ docker pull codepurble/docker-emsys-nie
```

**OR**

You can build the image yourself using:

```sh
$ git clone https://github.com/CodePurble/docker-emsys-nie.git
$ cd docker-emsys-nie
$ docker build -t "some name" .
```

# Info

This image contains the following packages:

* `build-essential`
* `u-boot-tools`
* `gcc-arm-none-eabi`
* `gcc-arm-linux-gnueabihf`
* `libncurses-dev`
* `bc`
* `cpio`

# Usage

This container intends to supply just the **build** dependencies that are
required for the labs (e.g. cross compilers, linkers, etc.). This image does
not aim to contain things like U-boot images, kernel archives etc.  So what you
should do is download those in your host system, and mount it in the container
as a shared volume (see the example below). Things like `qemu` are not supplied
in this container. You will have to install them on the host system itself.

## Example

```sh
$ cd <your-workdir>
$ docker run --rm -it -v $(pwd):/opt/ codepurble/docker-emsys-nie
```

Here, the directory you are in (in the terminal where you ran the command) is
mounted at the location `/opt/` within the container, as a shared folder. You
can access everything in that shared folder from within the container.

So, if you want to compile a Linux kernel, you should:
* Download and extract the archive in your host system somewhere
* Mount that directory as a shared volume in the container
* Compile it in the container
* Use the built binaries in your host system (e.g. use them with `qemu`)

> **NOTE:** In the above example, if you built the image yourself, the image
> name must be the one you gave

# Contributions

I will try to keep this as up to date as possible. If there is something
missing, submit a PR! If anyone can help to test and maintain on Windows, it
will be great.

And, you know the drill, if there's a problem, open up an issue.

# Misc

[A good resource for learning Linux](https://linuxjourney.com/)
