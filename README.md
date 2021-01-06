# Ubuntu 20.10 (Groovy Gorilla) Image for Ansible Testing

![Build](https://github.com/chzerv/docker-ubuntu-ansible/workflows/Build/badge.svg?branch=master)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/chzerv/docker-ubuntu-ansible)

This Dockerfile builds an Ubuntu 20.10 (Groovy Gorilla) based container with Ansible and Ansible 
testing tools pre-installed.

# Branches/Tags

Each branch of this repository represents an Ubuntu version, with the `master` branch representing the
latest version. Pull the branch (version) you are interested in.

| Branch | Distribution version | Image tag           |
| :----: | :------------------: | :-------:           |
| master | 20.10 (groovy)       | latest,groovy,20.10 |
| focal  | 20.04 (focal)        | focal,20.04         |
| bionic | 18.04 (bionic)       | bionic,18.04        |

# How to build locally

1. Install [Docker](https://docs.docker.com/engine/install/) or [Podman](https://podman.io/getting-started/installation.html).
2. Clone the branch you're interested in. For example, for Ubuntu 20.10 (Groovy Gorilla): `git clone https://github.com/chzerv/docker-ubuntu-ansible.git`.
3. `cd` into the directory and run `docker build -t ubuntu2010-ansible .`

# How to use

1. Install [Docker](https://docs.docker.com/engine/install/) or [Podman](https://podman.io/getting-started/installation.html).
2. Pull this image from _Docker hub_: `docker pull chzerv/docker-ubuntu-ansible:latest` (or use the 
   image you built locally).
3. Run a container:

   ```shell
   docker run -d --privileged --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro docker-ubuntu-ansible:latest
   ```

4. Run Ansible inside that container:

   ```shell
   docker exec -it $container_id ansible --version
   ```

# Notes

This image is used for testing Ansible roles and playbooks locally and/or in CI, hence, security is not
a concern. It is not intended or recommended to use this image in production environments.
