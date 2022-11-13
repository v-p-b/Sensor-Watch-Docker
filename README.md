Dockerized Sensor Watch Emulator
================================

Usage
-----

Clone your [Sensor-Watch](https://github.com/joeycastillo/Sensor-Watch) repository to this directory (submodules won't work!):

```
git clone https://github.com/joeycastillo/Sensor-Watch
```

Use Docker Compose to build and run the emulator (will invoke `make clean`!):

```
docker-compose up
```

The emulator is available at http://localhost:8000/watch.html

To build the native firmware, set the `BUILD_ACTION` environment variable to `native`:

```
BUILD_ACTION=native docker-compose up
```

