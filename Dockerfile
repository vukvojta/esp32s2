FROM debian:bullseye-slim

RUN apt-get update && \
    apt-get install -y git wget flex bison gperf python3 python3-venv cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0
WORKDIR /root
RUN git clone --recursive https://github.com/espressif/esp-idf.git
RUN esp-idf/install.sh esp32s2
RUN /bin/bash -c 'source esp-idf/export.sh'
