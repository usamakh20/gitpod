FROM kalilinux/kali-rolling

WORKDIR /root
RUN apt update && apt upgrade -y

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Hacking tools ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
RUN apt install git hcxtools hashcat aircrack-ng xterm iw iproute2 pciutils procps -y

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Airgeddon ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
RUN git clone --depth 1 https://github.com/v1s1t0r1sh3r3/airgeddon.git 
RUN echo "export PATH="/root/airgeddon:$PATH"" >> /root/.bashrc


# Clean apt cache
RUN rm -rf /var/lib/apt/lists/*