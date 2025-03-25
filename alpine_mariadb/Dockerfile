# Použití lehkého Alpine Linux
FROM alpine:latest

# Instalace potřebných balíčků
RUN apk add --no-cache \
    git \
    nano \
    sudo \
    bash \
    openssh-client  # Potřebný pro Git přes SSH

# SSH nastavení
RUN mkdir /var/run/sshd && \
    echo "export VISIBLE=now" >> /etc/profile

# Klonování projektu z GitHubu
RUN git clone https://github.com/eKultura/XXXXXXXXXX /XXXXXXXXXX

# Kopírování vlastního entrypoint skriptu
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Nastavení entrypointu
ENTRYPOINT ["/entrypoint.sh"]