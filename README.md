# Ungoogled Chromium Docker build container

A docker container that builds an ungoogled-chromium .deb

## Usage

Build the docker image.

`$ docker build . -t ungoogled-chromium:builder`

Then run the docker compose file.

Before exiting, the build script will copy the packages to the working
directory, which is mounted as a bind volume on the container.
