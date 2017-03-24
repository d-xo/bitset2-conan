FROM debian:unstable-slim

# -----------------------------------------------------------

RUN apt-get update && apt-get install -y \
    cmake \
    git \
    ninja-build \
    python-pip \
&& rm -rf /var/lib/apt/lists/*

RUN pip install conan==0.21.1

# -----------------------------------------------------------

RUN useradd --create-home -s /bin/bash user
COPY bashrc /home/user/.bashrc

USER user

# -----------------------------------------------------------

VOLUME /src
WORKDIR /src

# -----------------------------------------------------------
