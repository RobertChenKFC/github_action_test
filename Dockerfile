FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y openssh-server vim tmux valgrind make bison gcc git qemu-user qemu-user-static gcc-riscv64-linux-gnu g++-riscv64-linux-gnu libc6-dev-riscv64-cross

RUN mkdir /var/run/sshd

RUN useradd -ms /bin/bash robert
RUN echo 'robert:0000' | chpasswd

RUN mkdir -p /home/robert/.ssh && \
    chown -R robert:robert /home/robert/.ssh && \
    chmod 700 /home/robert/.ssh

COPY id_ed25519.pub /home/robert/.ssh/authorized_keys
COPY .vimrc /home/robert/.vimrc
RUN chown robert:robert /home/robert/.ssh/authorized_keys && \
    chmod 600 /home/robert/.ssh/authorized_keys

RUN echo "robert ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin no/' /etc/ssh/sshd_config && \
    sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config && \
    sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/' /etc/ssh/sshd_config
RUN echo 'AllowAgentForwarding yes' >> /etc/ssh/sshd_config

RUN mkdir /home/robert/data && \
    chown -R robert:robert /home/robert/data

COPY .gitconfig /home/robert/.gitconfig

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
