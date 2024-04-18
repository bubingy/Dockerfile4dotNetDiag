# Base images 
FROM debian:buster

# RUN
    # install required packages
RUN echo "deb http://apt.llvm.org/buster/ llvm-toolchain-buster main" >> /etc/apt/source.list && \
    echo "deb-src http://apt.llvm.org/buster/ llvm-toolchain-buster main" >> /etc/apt/source.list && \
    apt update && apt install -y curl gettext git libicu-dev libncurses5 \
    libunwind8 lldb locales locales-all python3 python2-dev tar vim wget zip && \
    apt-get clean && /bin/bash 