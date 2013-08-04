# docker-wordpress-nginx

A Dockerfile that installs the latest wordpress, nginx and php-fpm.

## Installation

```
$ git clone https://github.com/eugeneware/docker-wordpress-nginx.git
$ cd docker-wordpress-nginx
$ docker build -t="docker-wordpress-nginx" .
```

## Usage

To spawn a new instance of wordpress:

```
$ docker run -d docker-wordpress-nginx
```
