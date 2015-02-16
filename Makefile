step=-----------------------

# HELP MENU
all: help
help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""
	@echo "   1.  make build    - Build image"
	@echo "   2.  make start    - Start container"
	@echo "   3.  make state    - Current state container"
	@echo "   4.  make logs     - Print logs container"
	@echo "   5.  make stop     - Stop container"
	@echo "   6.  make remove   - Remove container"
	@echo "   7.  make bash     - Launch container bash"
	@echo ""

# Manage
build:
	@echo "$(step) Building $(step)"
	@docker build --tag=huttopia/nginx-php-fpm:latest .

start:
	@echo "$(step) Starting $(step)"
	@docker run --name huttosoft-nginx-php-fpm -d -it huttopia/nginx-php-fpm:latest

state:
	@echo "$(step) Current state $(step)"
	@docker ps -a | grep huttosoft-web

logs:
	@echo "$(step) Logs $(step)"
	@docker logs -f huttosoft-nginx-php-fpm

stop:
	@echo "$(step) Stopping $(step)"
	@docker stop huttosoft-nginx-php-fpm

remove: stop
	@echo "$(step) Removing $(step)"
	@docker rm huttosoft-nginx-php-fpm

bash:
	@echo "$(step) Starting bash $(step)"
	@docker run --name huttosoft-nginx-php-fpm --rm -it huttopia/nginx-php-fpm:latest bash
