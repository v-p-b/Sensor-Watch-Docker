FROM ubuntu:jammy
RUN apt-get update
RUN apt-get install -y gcc-arm-none-eabi git emscripten python3 make
RUN git config --global --add safe.directory /sw
RUN git config --global --add safe.directory /sw/tinyusb
RUN git config --global --add safe.directory /sw/littlefs
WORKDIR /sw/movement/make
CMD ["/bin/bash", "-c", "make clean; emmake make && python3 -m http.server 8000 -d build"]


