# VMware Horizon Client in Docker

This is a tool for running the VMware Horizon Client in a Docker container.

Smart card support is included.

## How to build the container
Run the following commands:
```
cd docker
./build.sh
```
## How to run the container
Open `docker/launch.sh` with a text editor.

Replace `example.org` with your preferred connection URL.

Replace `America/New_York` with your preferred time zone.

Next, run the following commands:
```
cd docker
./launch.sh
```
*Note: By default, this container may only work if your user account is user id 1000.*
