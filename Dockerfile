FROM ubuntu:jammy
RUN apt-get update
RUN apt-get install -y gcc-arm-none-eabi git emscripten python3 make
RUN git config --global --add safe.directory /sw
RUN git config --global --add safe.directory /sw/tinyusb
RUN git config --global --add safe.directory /sw/littlefs
ADD "run.sh" "/script/run.sh"
WORKDIR /sw/movement/make
CMD ["/bin/bash", "/script/run.sh"]


