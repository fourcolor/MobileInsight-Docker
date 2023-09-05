FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y git python3 python-wxgtk3.0 wget cmake libglib2.0-dev libgcrypt-dev libc-ares-dev flex bison libpcap-dev sudo 
RUN apt-get install -y python3-pip
RUN pip3 install pyserial crcmod matplotlib
WORKDIR /workplace
RUN git clone https://github.com/mobile-insight/mobileinsight-core.git
RUN cd mobileinsight-core && ./install-ubuntu.sh
CMD ["/bin/bash"]