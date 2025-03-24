#!/bin/bash
service ssh start

# Spuštìní prvního skriptu
echo "Running users.sh..."
./scripts/users.sh

cd /XXXXXXXXXX ### zmenit adresar

# Spustí SSH
tail -f /dev/null