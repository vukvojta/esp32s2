# esp32s2

This is a dockerized ESP-IDF C++ development environment for Adafruit ESP32-S2 Feather on GNU/Linux.
It enables you to start development without installing anything locally (except Docker).

Build docker image:
```
docker build . -t esp_sdk --rm
```
Run docker container:
```
docker run -itv $PWD/proj:/root/proj --rm --device /dev/ttyACM0 esp_sdk
```
In container:
```
idf.py set-target esp32s2
idf.py menuconfig # optional
idf.py build
idf.py -p /dev/ttyACM0 flash
idf.py -p /dev/ttyACM0 monitor
```
