# === Builder stage ===
FROM ubuntu:22.04 AS builder
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \ 
    ca-certificates wget git build-essential autoconf automake libtool texinfo pkg-config \
    libgtk-3-dev libpulse-dev libglib2.0-dev libasound2-dev libsndfile1-dev libpng-dev zlib1g-dev unzip \
    && rm -rf /var/lib/apt/lists/*

# Build XRoar from official repo
ARG XROAR_COMMIT=master
RUN git clone https://www.6809.org.uk/git/xroar.git /tmp/xroar \
 && cd /tmp/xroar \
 && git checkout $XROAR_COMMIT \
 && ./autogen.sh \
 && ./configure --prefix=/usr/local \
 && make -j"$(nproc)" \
 && make install \
 && rm -rf /tmp/xroar

# Build A09 assembler
WORKDIR /tmp
RUN wget https://github.com/Arakula/A09/archive/refs/heads/master.zip -O a09.zip \
 && unzip a09.zip \
 && cd A09-master \
 && make -j"$(nproc)" \
 && install -m 0755 a09 /usr/local/bin/a09 \
 && rm -rf /tmp/A09-master /tmp/a09.zip

# === Runtime stage ===
FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    openssh-client curl gnupg ca-certificates build-essential python3 python3-pip python3-venv libgtk-3-0 libgtk-3-dev libpulse-dev libpng-dev libpulse-dev libglib2.0-0 libasound2 libsndfile1 libpng16-16 zlib1g \
    libgl1-mesa-glx libgl1-mesa-dri mesa-utils x11-apps xauth dbus-x11 sudo \
    && rm -rf /var/lib/apt/lists/*

COPY --from=builder /usr/local/ /usr/local/

RUN useradd -m -s /bin/bash dev \
 && echo "dev ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

WORKDIR /home/dev/workspace

SHELL ["/bin/bash", "-c"]

CMD ["bash"]
