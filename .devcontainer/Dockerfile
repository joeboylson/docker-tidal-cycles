FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

ARG USERNAME=tidal
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && apt-get update \
    && apt-get install -y sudo \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

RUN usermod --shell /bin/bash $USERNAME

RUN apt-get install ansible git -y
RUN apt-get install systemctl -y
RUN apt-get install xvfb -y
RUN apt-get install pulseaudio -y
RUN apt-get install dbus -y
RUN apt-get install dbus-x11 -y

ENV PULSE_SERVER=host.docker.internal

COPY ./machine-id /etc/machine-id
