#!/bin/bash
service ssh start

# Spu�t�n� prvn�ho skriptu
echo "Running users.sh..."
./scripts/users.sh

cd /XXXXXXXXXX ### zmenit adresar

# Spust� SSH
tail -f /dev/null