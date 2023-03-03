FROM debian:bullseye-slim
WORKDIR /root
RUN /bin/bash -c 'apt-get update && \
    apt-get install -y git wget flex bison gperf python3 python3-venv cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0 \
    screen && \
    git clone --recursive https://github.com/espressif/esp-idf.git && \
    esp-idf/install.sh esp32s2'
COPY run.sh ./
ENTRYPOINT ["./run.sh"]
