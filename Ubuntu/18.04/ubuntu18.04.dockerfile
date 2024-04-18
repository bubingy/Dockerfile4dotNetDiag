# Base images 
FROM ubuntu:18.04

# RUN
    # install required packages
RUN DEBIAN_FRONTEND="noninteractive" && \
    echo "deb http://apt.llvm.org/bionic/ llvm-toolchain-bionic main" >> /etc/apt/source.list && \
    echo "deb-src http://apt.llvm.org/bionic/ llvm-toolchain-bionic main" >> /etc/apt/source.list && \
    apt update && \
    apt install -y  curl git libicu-dev lldb-10 \
        libunwind8 python3 vim tar wget zip && /bin/bash
