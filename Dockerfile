FROM composer
LABEL maintainer="Quintus Leung"

RUN composer global require mglaman/drupal-check
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

WORKDIR /app
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
