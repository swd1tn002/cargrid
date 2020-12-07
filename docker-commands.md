# Summary of Docker commands for cargrid app

## Build the Docker image

> *The docker build command builds Docker images from a Dockerfile and a “context”. A build’s context is the set of files located in the specified PATH or URL.*
> 
> https://docs.docker.com/engine/reference/commandline/build/

The first option `-t` sets the image's name to `car-rest-service`. The dot `.` uses current folder as the build’s context:

```
docker build -t cargrid .
```

## Create a container

> *The docker create command creates a writeable container layer over the specified image and prepares it for running the specified command.*
>
> https://docs.docker.com/engine/reference/commandline/create/

The `--name` option can be used later for starting and stopping the container. The `-p` option exposes our host system's port 3000 and binds it to the same port in the container. Last, `car-rest-service` is the name of the image we used in the build step.

```
docker create --name cargrid -p 3000:3000 cargrid
```

## Start the container

To start the container, run `docker start` with the name of the created container:

```
docker start cargrid
```

Alternatively, to see the output of the container in the current termilan session, use the `--attach` option:

```
docker start cargrid --attach
```

When the container is running, you can access the app through http://localhost:3000.

## Stop the container

To stop the container, use `docker stop` with the container's name:

```
docker stop cargrid
``` 
