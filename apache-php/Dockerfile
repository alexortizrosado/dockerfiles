FROM php:5.6-apache

MAINTAINER Alex Ortiz-Rosado <alexortizrosado@gmail.com>

RUN apt-get update -qq && apt-get install -qqy \
      mysql-client \
  && rm -rf /var/lib/apt/lists/*


RUN docker-php-ext-configure pdo_mysql --with-pdo-mysql=mysqlnd \
  && docker-php-ext-configure mysql --with-mysql=mysqlnd \
  && docker-php-ext-configure mysqli --with-mysqli=mysqlnd

RUN docker-php-ext-install \
    pdo_mysql \
    mysqli \
    mysql

RUN a2enmod rewrite headers ssl
RUN a2ensite default-ssl
