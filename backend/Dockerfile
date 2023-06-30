FROM php:7.4-alpine
ARG DIR=/var/www/html

WORKDIR ${DIR}

COPY index.php ${DIR}
COPY conexao.php ${DIR}

RUN apk add --no-cache icu-dev \
    && apk add --no-cache libzip-dev \
    && docker-php-ext-install mysqli \
    && docker-php-ext-enable mysqli \
    && rm -rf /var/cache/apk/*
EXPOSE 80
CMD ["php", "-S", "0.0.0.0:80"]