#!/bin/bash
# spustění SSH serveru
service ssh start

# Spuštění prvního skriptu - vytvoření uživatelů
echo "Running users.sh..."
./scripts/users.sh

# Spuštění hlavního procesu (Apache)
exec apache2-foreground
