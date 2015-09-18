# Pritunl + Docker = <3

## Pull the image

    docker pull include/docker-pritunl

## Data Volume

    mkdir -p /mnt/docker-pritunl/var/lib/mongodb

## Run Pritunl

    docker run -d --privileged \
        -v /mnt/docker-pritunl/var/lib/mongodb:/var/lib/mongodb \
        -p 1194:1194/udp \
        -p 1194:1194/tcp \
        -p 9700:9700/tcp \
        include/docker-pritunl

## Configure Pritunl

* Open https://<youripaddress:9700
* Login with username pritunl and password pritunl
* Fun
