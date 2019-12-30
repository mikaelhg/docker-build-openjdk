#!/bin/sh

/usr/bin/apt-get -yqq update \
    && /usr/bin/apt-get install -yqq --no-install-recommends \
        curl ca-certificates fontconfig locales \
        sudo less nano screen file zip unzip \
        libx11-dev libxext-dev libxrender-dev libxrandr-dev libxtst-dev libxt-dev \
        libcups2-dev libfontconfig1-dev libasound2-dev \
        git mercurial \
        gcc-8 g++-8 clang-8 clang-tools-8 autoconf automake libc6-dev make \
    && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
    && locale-gen en_US.UTF-8 \
    && rm -rf /var/lib/apt/lists/*

ESUM='2226366d7dffb3eb4ec3d14101f4ddb4259195aa43bb319a93810447b8384930';
BINARY_URL='https://github.com/AdoptOpenJDK/openjdk13-binaries/releases/download/jdk-13.0.1%2B9/OpenJDK13U-jdk_x64_linux_hotspot_13.0.1_9.tar.gz';

curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};
echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;
mkdir -p /opt/java/openjdk;
cd /opt/java/openjdk;
tar -xf /tmp/openjdk.tar.gz --strip-components=1;
rm -rf /tmp/openjdk.tar.gz;