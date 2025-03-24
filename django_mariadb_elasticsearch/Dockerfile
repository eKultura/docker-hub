FROM python:3.12

# Instalace nezbytných balíků
RUN apt-get update && apt-get install -y \
    git \
    openssh-server \
    build-essential \
    default-libmysqlclient-dev \
    pkg-config \
    mariadb-server \
    mariadb-client \
    libpcre3 \
    libpcre3-dev \
    nano \
    sudo \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# SSH nastavení
RUN mkdir /var/run/sshd && \
    echo "export VISIBLE=now" >> /etc/profile

# Instalace Python balíků
COPY ./data/requirements.txt /div_app/
RUN pip install --no-cache-dir -r div_app/requirements.txt django-elasticsearch-dsl ### gunicorn

# Kopírování entrypoint skriptu
COPY entrypoint.sh /entrypoint.sh
COPY ./scripts /scripts
RUN chmod +x /entrypoint.sh
RUN chmod +x /scripts/users.sh

# Použití entrypoint skriptu
CMD ["/entrypoint.sh"]
