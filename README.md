# Notes

This is not an official Laravel repository, this is a [fork of it](https://github.com/laravel/vapor-dockerfiles).  

The Dockerfile in this repository has been customized to use [PHP debian based images](https://github.com/docker-library/php) instead of Alpine due to [DNS issues](https://stackoverflow.com/a/76445398/8068675) experienced in AWS Lambda.

# Usage

**environment.Dockerfile**
```
FROM melbach/vapor-bookworm:php83

RUN apt-get update && apt-get install -y \
    default-mysql-client && \
    rm -rf /var/lib/apt/lists/*

COPY . /var/task
```

# Credits

Original Dockerfile: https://gist.github.com/antonioribeiro/0a9e12eb14c6cb9c3fd2f6632b35e85e  
Credits to the original author, Antonio Ribeiro, for his work.
