# Container image: Ubuntu Ansible

[![Build Status](https://travis-ci.com/chzerv/docker-ubuntu-ansible.svg?branch=master)](https://travis-ci.com/chzerv/docker-ubuntu-ansible)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/chzerv/docker-ubuntu-ansible)

This Dockerfile builds a Ubuntu-based container with Ansible and other Ansible testing tools pre-intalled.

# Branches/Tags

| Branch | Distribution version | Image tag |
| :----: | :------------------: | :-------: |
| master |    20.04 (focal)     |  latest   |
| bionic |    18.04 (bionic)    |  bionic   |

# How to build locally

1. Install [Docker](https://docs.docker.com/engine/install/) or [Podman](https://podman.io/getting-started/installation.html).
2. Each branch represents a tag (version), with the `master` branch being the latest version. Clone the branch you're interested in. E.g., for Ubuntu 20.04: `git clone https://github.com/chzerv/docker-ubuntu-ansible.git`.
3. `cd` into the directory and run `docker build -t ubuntu2004-ansible`

# How to use

1. Install [Docker](https://docs.docker.com/engine/install/) or [Podman](https://podman.io/getting-started/installation.html).
2. Pull this image from _Docker hub_: `docker pull chzerv/docker-ubuntu-ansible:latest`. Remember, the tag represents the distribution version, so change it according to your needs.
3. Run a container:

   ```shell
   docker run -d --privileged --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro docker-ubuntu-ansible:latest
   ```

4. Run Ansible inside that container:

   ```shell
   docker exec -it $container_id ansible --version
   ```
