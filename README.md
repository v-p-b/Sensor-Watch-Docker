Dockerized Sensor Watch Emulator
================================

Usage
-----

Clone your [Sensor-Watch](https://github.com/joeycastillo/Sensor-Watch) repository to this directory (submodules won't work!):

```
git clone https://github.com/joeycastillo/Sensor-Watch
```

Use Docker Compose to build and run the emulator:

```
docker-compose up
```

The emulator is available at http://localhost:8000/watch.html

To build the native firmware, set the `BUILD_ACTION` environment variable to `native`:

```
BUILD_ACTION=native docker-compose up
```

These commands obviously work on the previously cloned Sensor-Watch directory, that is mounted to the container, so if you want to preserve a build, you should move it away from `Sensor-Watch/movement/make/build` before running `docker-compose` again.

