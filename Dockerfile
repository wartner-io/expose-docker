FROM php:8.0-cli

RUN apt-get update
RUN apt-get install -y git libzip-dev zip

RUN docker-php-ext-install zip


# install the dependencies
RUN curl https://github.com/beyondcode/expose/raw/master/builds/expose -L --output expose

RUN chmod +x expose
RUN mv expose /usr/local/bin/expose
RUN expose publish

ENV port=8080
ENV domain=localhost
ENV username=username
ENV password=password
ENV exposeConfigPath=$HOME/.expose/config.php

EXPOSE 8080

COPY docker-entrypoint.sh /usr/bin/
RUN chmod 755 /usr/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]
