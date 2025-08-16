FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    qemu-system-x86 qemu-utils \
    novnc websockify \
    wget curl xz-utils unzip p7zip-full \
    android-tools-adb \
    net-tools iproute2 \
    && rm -rf /var/lib/apt/lists/*

# noVNC dosya konumu (Ubuntu paketinde burası)
ENV NOVNC_WEB=/usr/share/novnc
WORKDIR /work

# Varsayılan çalışma klasörü
RUN mkdir -p /work/data /work/scripts
