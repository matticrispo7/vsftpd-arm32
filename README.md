# vsFTPd 
Docker image optimized for arm32 architecture to create a FTP server (based on [this](https://github.com/fikipollo/vsftpd-docker#vsftpd-server-docker))

## Configuration
You have to create an *.env* file that is copied by the Dockerifile with the following variables:
- **FTP_USER**: username of the deafult FTP account that will be created
- **FTP_PASS**: password of the default FTP account
- **FTP_PORT**: the exposed port of the FTP server
- **PASV_ENABLE**: flag to enable (set to *YES*) the passive mode
- **PASV_MIN_PORT**: the minimum port used for passive mode
- **PASV_MAX_PORT**: the maximum port used for passive mode
- **PASV_ADDRESS**: the external IP address through which the FTP server is reached (if *PASV_ENABLE* is enabled)

## Build the Docker image
You can build the Docker image by running the following command (in the same directory of the Dockerfile)
```sh
docker build -t vsftpd .
```

## Running the Docker container
You can create and run the container with the default Docker command or you can customize the provided *docker-compose* (modify the values with < ... >) and execute it.
In the working directory:
```sh
docker-compose up -d
```
