FROM ubuntu:20.04
MAINTAINER "Xristos Zervakis"

# Install Ansible via pip so we get the latest version.
# "cryptography" is also a required dependency.
ENV pip_packages "ansible ansible-lint yamllint molecule molecule-containers cryptography"

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       sudo systemd systemd-sysv \
       build-essential wget libffi-dev libssl-dev vim \
       python3-pip python3-dev python3-setuptools python3-wheel \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    rm -f /lib/systemd/system/multi-user.target.wants/* ; \
    rm -f /etc/systemd/system/*.wants/* ; \
    rm -f /lib/systemd/system/local-fs.target.wants/* ; \
    rm -f /lib/systemd/system/sockets.target.wants/*udev* ; \
    rm -f /lib/systemd/system/sockets.target.wants/*initctl* ; \
    rm -f /lib/systemd/system/basic.target.wants/* ; \
    rm -f /lib/systemd/system/anaconda.target.wants/* ; \
    rm -f /lib/systemd/system/plymouth* ; \
    rm -f /lib/systemd/system/systemd-update-utmp*

RUN pip3 install $pip_packages

RUN mkdir -p /etc/ansible
RUN echo -e '[local]\nlocalhost ansible_connection=local' > /etc/ansible/hosts

RUN rm -f /lib/systemd/system/multi-user.target.wants/getty.target

VOLUME [ "/sys/fs/cgroup" ]
CMD ["/lib/systemd/systemd"]
