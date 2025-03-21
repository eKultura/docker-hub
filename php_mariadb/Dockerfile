FROM php:8.2-apache

# Kopírování entrypoint skriptu
COPY entrypoint.sh /entrypoint.sh
COPY ./scripts /scripts
RUN chmod +x /entrypoint.sh
RUN chmod +x /scripts/users.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["apache2-foreground"]