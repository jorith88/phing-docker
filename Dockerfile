FROM php:7.0

ADD phing /opt/phing

ADD https://raw.githubusercontent.com/mlocati/docker-php-extension-installer/master/install-php-extensions /usr/local/bin/
RUN chmod uga+x /usr/local/bin/install-php-extensions && sync && \
    install-php-extensions zip

WORKDIR /src

CMD [ "/opt/phing/bin/phing" ]
# CMD [ "/opt/phing/bin/phing", "-verbose" ]
