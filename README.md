# Notes

This is not the official Laravel repository, this is a [fork of it](https://github.com/laravel/vapor-dockerfiles).  

The Dockerfile in this repository has been customized to use the [PHP Buster](https://github.com/docker-library/php) images instead of Alpine due to DNS issues experienced in AWS Lambda.

# Usage

**environement.Dockerfile**
```
FROM melbach/vapor-buster:php82

RUN apt-get update && apt-get install -y \
    default-mysql-client && \
    rm -rf /var/lib/apt/lists/*

COPY . /var/task
```

# Credit

Original Dockerfile: https://gist.github.com/antonioribeiro/0a9e12eb14c6cb9c3fd2f6632b35e85e  
Credits to the original author, Antonio Ribeiro, for his work.
