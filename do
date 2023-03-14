docker build . -t esp_sdk --rm
docker run -itv /home/vuk/Devel/esp32s2/proj:/root/proj --rm esp_sdk
docker run -itv /home/vuk/Devel/esp32s2/proj:/root/proj --rm --device /dev/ttyACM0 esp_sdk
