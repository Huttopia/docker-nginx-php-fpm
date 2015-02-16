# Docker Nginx PHP Fpm

### Quick start

```bash
docker run --name=huttopia-nginx-php-fpm
    -d
    -it
    -v /path/to/hosts:/etc/apche2/sites-enabled
    huttopia/nginx-php-fpm:latest
```