#!/bin/bash

# Spuštìní prvního skriptu - vytvoøení uživatelù
echo "Running users.sh..."
./scripts/users.sh

# Spuštìní hlavního procesu (Apache nebo PHP-FPM)
exec "$@"