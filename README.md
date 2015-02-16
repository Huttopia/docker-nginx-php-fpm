# Docker Nginx PHP Fpm

### Quick start

```bash
docker run --name=deezer
    -d
    -it
    -v /path/to/hosts:/etc/apche2/sites-enabled
    -v /path/to/.ssh:/root/.ssh
    huttopia/nginx-php-fpm:latest
```