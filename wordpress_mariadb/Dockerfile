FROM wordpress:latest

# Instalace rozšíření pro WordPress
RUN apt-get update && apt-get install -y \
    libpng-dev libjpeg-dev libfreetype6-dev zip unzip nano sudo && \
    docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install gd mysqli pdo pdo_mysql && \
    a2enmod rewrite && \
    openssh-server && \
    mkdir /var/run/sshd && \
    rm -rf /var/lib/apt/lists/*

# Nastavení oprávnění pro WordPress
RUN chown -R www-data:www-data /var/www/html && chmod -R 755 /var/www/html

# Konfigurace SSH serveru , zakazani prihlaseni root a povoleni pristup pres heslo
#RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config && \
#    sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin no/' /etc/ssh/sshd_config

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]