docker build . -t esp_sdk --rm
docker run -it --rm esp_sdk /bin/bash
docker run -it --rm --device /dev/ttyACM0 esp_sdk /bin/bash
