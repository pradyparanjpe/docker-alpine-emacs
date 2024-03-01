# Docker image for Emacs on Alpine Linux

[![GitHub Workflow Status](https://github.com/pradyparanjpe/docker-alpine-emacs/actions/workflows/docker.yml/badge.svg)](https://github.com/pradyparanjpe/docker-alpine-emacs/actions/workflows/docker.yml)
[![Docker Pulls](https://img.shields.io/docker/pulls/pradyparanjpe/alpine-emacs)](https://hub.docker.com/r/pradyparanjpe/alpine-emacs/)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/pradyparanjpe/alpine-emacs)](https://hub.docker.com/r/pradyparanjpe/alpine-emacs/)

Forked gratefully from [iquiw/docker-alpine-emacs](https://github.com/iquiw/docker-alpine-emacs).

Emacs from Alpine community repository with MELPA setting.

* Alpine Linux v3.19.1
* Emacs version: [tag]

## How to use this image

```console
$ podman run -it docker.io/pradyparanjpe/alpine-emacs
```

## Environment Variables

### `EMACS_PACKAGES`

This variable specifies space separated list of packages.
They are installed automatically when the container is executed.
