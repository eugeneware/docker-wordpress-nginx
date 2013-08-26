# docker-wordpress-nginx

A Dockerfile that installs the latest wordpress, nginx, php-apc and php-fpm.

NB: A big thanks to [jbfink](https://github.com/jbfink/docker-wordpress) who did most of the hard work on the wordpress parts!

You can check out his [Apache version here](https://github.com/jbfink/docker-wordpress).

## Installation

```
$ git clone https://github.com/eugeneware/docker-wordpress-nginx.git
$ cd docker-wordpress-nginx
$ sudo docker build -t="docker-wordpress-nginx" .
```

## Usage

To spawn a new instance of wordpress:

```bash
$ sudo docker run -d docker-wordpress-nginx
```

You'll see an ID output like:
```
d404cc2fa27b
```

Use this ID to check the port it's on:
```bash
$ sudo docker port d404cc2fa27b 80 # Make sure to change the ID to yours!
```
