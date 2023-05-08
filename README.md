
# uncompyle6-docker

This project was created to make it easy to use the [uncompyle6](https://github.com/rocky/python-uncompyle6) project without have to worry about the required python prerequisites.

We required the use of uncompyle6 when working on a security research paper and unfortunately, after getting our environments prepared to use this command, we neglectfully removed older python requirements that "bricked" a few of our other vital binaries.
## Run Locally by Building a Docker Image

Notes: When running the Docker container, you will be required to create a volume from the directory of your ```.pyo``` files into ```/files``` of the Docker container.

Clone the project

```bash
  git clone https://github.com/Nolia-Inc/uncompyle6-docker.git uncompyle6-docker
```

Go to the project directory

```bash
  cd uncompyle6-docker
```

Build a Docker image

```bash
  docker build -t uncompyle6:TAG .
```

Run a Docker container with the newly created image

```bash
  docker run -it -v [directory of your .pyo files]:/files uncompyle6:TAG bash
```

## Run using Pre-built Docker Image

Notes: When running the Docker container, you will be required to create a volume from the directory of your ```.pyo``` files into ```/files``` of the Docker container.

Fetch the Docker image (use latest as TAG for lastest build)

```bash
  docker pull austinhenderson/uncompyle6:TAG
```

Run the Docker container (bash is the default command)

```bash
  docker run -it -v [directory of your .pyo files]:/files uncompyle6:TAG
```

## Running uncompyle6 after entering the Docker Container

After running the Docker container, you will be presented with a root shell in a unbuntu system. You will be in the /files directory upon entering the shell and it will be here you can use the ```uncompyle6``` command to investigate the files you had mounted into the /files directory.

Fetch the Docker image (use latest as TAG for lastest build)

Here is an example of using uncompyle6 to investigate the init.pyo file.

```bash
root> uncompyle6 init.pyo
```

## Usage/Examples

For the purpose of this section, I will assume you are running this command from your current working directory.

Please note that the use of $(pwd) might need to be changed based on the operating system you using.

Also note that for the following examples, the use of the latest tag will be used.

```bash
docker run -it -v $(pwd):/files austinhenderson/uncompyle6:latest
```

Running it with a different command. Lets use the uncompyle6 command directly without entering the Docker container.

```bash
docker run -it -v $(pwd):/files austinhenderson/uncompyle6:latest uncompyle6 /files/file.pyo
```

After entering the Docker container shell

```bash
root> uncompyle6 init.pyo
```
## Authors

- [@austinhenderson19](https://www.github.com/austinhenderson19)


## License

[GNU GPLv3 ](https://choosealicense.com/licenses/gpl-3.0/)


## Acknowledgements

 - [uncompyle6](https://github.com/rocky/python-uncompyle6)
 - [docker](https://www.docker.com/)
